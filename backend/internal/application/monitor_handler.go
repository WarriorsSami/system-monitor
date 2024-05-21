package application

import (
	"encoding/json"
	"log"
	"system-monitor/backend/internal/domain/entities"
	"system-monitor/backend/internal/domain/interfaces"
	"time"
)

type HardwareMonitor interface {
	GetHostInfo() *entities.HostStat
	GetUsersInfo() []*entities.UserStat
	GetMemoryInfo() *entities.MemoryStat
	GetCPUInfo() *entities.CPUStat
	GetDiskInfo() *entities.DiskStat
	GetPartitionsInfo() []*entities.PartitionStat
	GetNetConnectionsInfo() []*entities.ConnectionStat
	GetProcessesInfo() []*entities.ProcessStat
}

type MonitorHandler struct {
	hm HardwareMonitor
}

func NewMonitorHandler(hm HardwareMonitor) *MonitorHandler {
	return &MonitorHandler{hm: hm}
}

func (handler *MonitorHandler) HandleMonitor(broadcaster interfaces.MessageBroadcaster) {
	ticker := time.NewTicker(800 * time.Millisecond)

	for range ticker.C {
		hostInfo := handler.hm.GetHostInfo()
		usersInfo := handler.hm.GetUsersInfo()
		memoryInfo := handler.hm.GetMemoryInfo()
		cpuInfo := handler.hm.GetCPUInfo()
		diskInfo := handler.hm.GetDiskInfo()
		partitionsInfo := handler.hm.GetPartitionsInfo()
		connsInfo := handler.hm.GetNetConnectionsInfo()
		procsInfo := handler.hm.GetProcessesInfo()

		systemStat := entities.NewSystemStat(
			hostInfo,
			usersInfo,
			memoryInfo,
			cpuInfo,
			diskInfo,
			partitionsInfo,
			connsInfo,
			procsInfo,
		)
		log.Println(systemStat.ToString())

		// Convert systemStat to JSON and broadcast the message
		if msg, err := json.Marshal(systemStat); err != nil {
			log.Fatalln(err)
		} else {
			broadcaster.Broadcast(msg)
		}
	}
}
