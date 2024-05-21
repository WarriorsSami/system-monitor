package api

import (
	"github.com/gin-gonic/gin"
	"github.com/gorilla/websocket"
	"log"
	"net/http"
	"system-monitor/backend/internal/domain/interfaces"
)

type SystemMonitorHandler interface {
	HandleMonitor(broadcaster interfaces.MessageBroadcaster)
}

type Server struct {
	router    *gin.Engine
	wsMux     *WebsocketMux
	smHandler SystemMonitorHandler
}

func NewServer(smHandler SystemMonitorHandler) *Server {
	router := gin.Default()
	wsMux := &WebsocketMux{
		subscriberMessageBuffer: 100,
		upgrader: &websocket.Upgrader{
			ReadBufferSize:  1024,
			WriteBufferSize: 1024,
			CheckOrigin: func(_ *http.Request) bool {
				return true
			},
		},
		subscribers: make(map[*subscriber]struct{}),
	}

	return &Server{
		router:    router,
		wsMux:     wsMux,
		smHandler: smHandler,
	}
}

func (s *Server) Run() {
	s.router.GET("/system/ws", s.wsSystemHandler)

	log.Println("Server is running on port :8080")
	err := s.router.Run(":8080")
	if err != nil {
		return
	}
}

func (s *Server) wsSystemHandler(ctx *gin.Context) {
	go func() {
		err := s.wsMux.subscribe(ctx.Request.Context(), ctx.Writer, ctx.Request)
		if err != nil {
			ctx.JSON(http.StatusInternalServerError, gin.H{"error": err.Error()})
			return
		}
	}()

	s.smHandler.HandleMonitor(s.wsMux)
}
