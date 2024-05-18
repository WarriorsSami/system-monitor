package application

import (
	"fmt"
	"log"
	"system-monitor/backend/internal/infrastructure"
	"time"
)

func HandleMonitor() {
	// execute the hardware monitor every 2 seconds using a ticker
	ticker := time.NewTicker(2 * time.Second)

	for range ticker.C {
		hm, err := infrastructure.NewHardwareMonitor()
		if err != nil {
			log.Fatalln(err)
		}

		hostInfo := hm.GetHostInfo()
		usersInfo := hm.GetUsersInfo()
		memoryInfo := hm.GetMemoryInfo()
		cpuInfo := hm.GetCPUInfo()
		diskInfo := hm.GetDiskInfo()
		connsInfo := hm.GetNetConnectionsInfo()
		procsInfo := hm.GetProcessesInfo()

		fmt.Println(hostInfo.ToString())
		for _, user := range usersInfo {
			fmt.Println(user.ToString())
		}
		fmt.Println(memoryInfo.ToString())
		fmt.Println(cpuInfo.ToString())
		fmt.Println(diskInfo.ToString())
		for _, conn := range connsInfo {
			fmt.Println(conn.ToString())
		}
		for _, proc := range procsInfo {
			fmt.Println(proc.ToString())
		}
	}

}
