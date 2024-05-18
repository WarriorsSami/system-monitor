package main

import "system-monitor/backend/internal/application"

func main() {
	go application.HandleMonitor()

	// block the main goroutine (this will be replaced by a web server in the future)
	select {}
}
