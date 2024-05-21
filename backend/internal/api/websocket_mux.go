package api

import (
	"context"
	"github.com/gorilla/websocket"
	"log"
	"net/http"
	"sync"
)

type subscriber struct {
	msgs chan []byte
}

type WebsocketMux struct {
	subscriberMessageBuffer int
	upgrader                *websocket.Upgrader
	subscribers             map[*subscriber]struct{}
	sync.Mutex
}

func (ws *WebsocketMux) addSubscriber(sub *subscriber) {
	ws.Lock()
	defer ws.Unlock()
	ws.subscribers[sub] = struct{}{}
	log.Println("New websocket connection established")
}

func (ws *WebsocketMux) removeSubscriber(sub *subscriber) {
	ws.Lock()
	defer ws.Unlock()
	close(sub.msgs)
	delete(ws.subscribers, sub)
	log.Println("Websocket connection closed")
}

func (ws *WebsocketMux) subscribe(ctx context.Context, w http.ResponseWriter, r *http.Request) error {
	conn, err := ws.upgrader.Upgrade(w, r, nil)
	if err != nil {
		return err
	}
	defer conn.Close()

	sub := &subscriber{
		msgs: make(chan []byte, ws.subscriberMessageBuffer),
	}
	ws.addSubscriber(sub)

	for {
		select {
		case msg := <-sub.msgs:
			err := conn.WriteMessage(websocket.TextMessage, msg)
			if err != nil {
				return err
			}
		case <-ctx.Done():
			ws.removeSubscriber(sub)
			return nil
		}
	}
}

func (ws *WebsocketMux) Broadcast(msg []byte) {
	ws.Lock()
	defer ws.Unlock()

	for sub := range ws.subscribers {
		sub.msgs <- msg
	}
}
