package main

import (
	"system-monitor/backend/internal/api"
	"system-monitor/backend/internal/application"
	"system-monitor/backend/internal/infrastructure"
)

func main() {
	hm, err := infrastructure.NewHardwareMonitor()
	if err != nil {
		return
	}
	smHandler := application.NewMonitorHandler(hm)
	server := api.NewServer(smHandler)

	server.Run()
}
