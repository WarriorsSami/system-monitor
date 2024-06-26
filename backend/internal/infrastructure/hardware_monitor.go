package infrastructure

import (
	"github.com/shirou/gopsutil/v4/cpu"
	"github.com/shirou/gopsutil/v4/disk"
	"github.com/shirou/gopsutil/v4/host"
	"github.com/shirou/gopsutil/v4/mem"
	"github.com/shirou/gopsutil/v4/net"
	"github.com/shirou/gopsutil/v4/process"
	"system-monitor/backend/internal/domain/entities"
)

type HardwareMonitor struct {
	hostInfo           *host.InfoStat
	usersInfo          []*host.UserStat
	memoryInfo         *mem.VirtualMemoryStat
	cpuInfo            *cpu.InfoStat
	cpuUsageInfo       []float64
	diskUsageInfo      *disk.UsageStat
	diskPartitionsInfo []*disk.PartitionStat
	netConnectionsStat []*net.IOCountersStat
	procsStat          []*process.Process
}

func NewHardwareMonitor() (*HardwareMonitor, error) {
	hostInfo, err := host.Info()
	if err != nil {
		return nil, err
	}

	usersInfo, err := host.Users()
	if err != nil {
		return nil, err
	}

	var users []*host.UserStat
	for _, user := range usersInfo {
		users = append(users, &user)
	}

	memInfo, err := mem.VirtualMemory()
	if err != nil {
		return nil, err
	}

	cpuInfo, err := cpu.Info()
	if err != nil {
		return nil, err
	}

	cpuUsageInfo, err := cpu.Percent(0, true)
	if err != nil {
		return nil, err
	}

	diskUsageInfo, err := disk.Usage("/")
	if err != nil {
		return nil, err
	}

	diskPartitionsInfo, err := disk.Partitions(true)
	if err != nil {
		return nil, err
	}

	var diskPartitions []*disk.PartitionStat
	for _, partition := range diskPartitionsInfo {
		diskPartitions = append(diskPartitions, &partition)
	}

	netConnectionsStat, err := net.IOCounters(true)
	if err != nil {
		return nil, err
	}

	var netConnections []*net.IOCountersStat
	for _, connection := range netConnectionsStat {
		netConnections = append(netConnections, &connection)
	}

	procsStat, err := process.Processes()
	if err != nil {
		return nil, err
	}

	var procs []*process.Process
	for _, proc := range procsStat {
		procs = append(procs, proc)
	}

	return &HardwareMonitor{
		hostInfo:           hostInfo,
		usersInfo:          users,
		memoryInfo:         memInfo,
		cpuInfo:            &cpuInfo[0],
		cpuUsageInfo:       cpuUsageInfo,
		diskUsageInfo:      diskUsageInfo,
		diskPartitionsInfo: diskPartitions,
		netConnectionsStat: netConnections,
		procsStat:          procs,
	}, nil
}

func (h *HardwareMonitor) GetHostInfo() *entities.HostStat {
	return entities.NewHostInfoStat(
		h.hostInfo.Hostname,
		h.hostInfo.OS,
		h.hostInfo.Platform,
		h.hostInfo.Procs,
		h.hostInfo.Uptime)
}

func (h *HardwareMonitor) GetUsersInfo() []*entities.UserStat {
	var users []*entities.UserStat
	for _, user := range h.usersInfo {
		users = append(users, entities.NewHostUserStat(user.User, user.Terminal))
	}
	return users
}

func (h *HardwareMonitor) GetMemoryInfo() *entities.MemoryStat {
	return entities.NewMemoryStat(
		h.memoryInfo.Total,
		h.memoryInfo.Available,
		h.memoryInfo.Used,
		h.memoryInfo.UsedPercent,
		h.memoryInfo.Free)
}

func (h *HardwareMonitor) GetCPUInfo() *entities.CPUStat {
	return entities.NewCPUStat(
		h.cpuInfo.ModelName,
		h.cpuInfo.Family,
		int32(len(h.cpuUsageInfo)),
		h.cpuInfo.Mhz,
		h.cpuUsageInfo)
}

func (h *HardwareMonitor) GetPartitionsInfo() []*entities.PartitionStat {
	var partitions []*entities.PartitionStat
	for _, partition := range h.diskPartitionsInfo {
		partitions = append(partitions,
			entities.NewPartitionStat(
				partition.Device,
				partition.Mountpoint,
				partition.Fstype,
				partition.Opts))
	}
	return partitions
}

func (h *HardwareMonitor) GetDiskInfo() *entities.DiskStat {
	return entities.NewDiskStat(
		h.diskUsageInfo.Path,
		h.diskUsageInfo.Fstype,
		h.diskUsageInfo.Total,
		h.diskUsageInfo.Free,
		h.diskUsageInfo.Used,
		h.diskUsageInfo.UsedPercent)
}

func (h *HardwareMonitor) GetNetConnectionsInfo() []*entities.ConnectionStat {
	var connections []*entities.ConnectionStat
	for _, connection := range h.netConnectionsStat {
		connections = append(connections,
			entities.NewConnectionStat(
				connection.Name,
				connection.BytesSent,
				connection.BytesRecv))
	}
	return connections
}

func (h *HardwareMonitor) GetProcessesInfo() []*entities.ProcessStat {
	var processes []*entities.ProcessStat
	for _, proc := range h.procsStat {
		name, _ := proc.Name()
		status, _ := proc.Status()
		cpuPercent, _ := proc.CPUPercent()
		memoryPercent, _ := proc.MemoryPercent()

		processes = append(processes,
			entities.NewProcessStat(
				proc.Pid,
				name,
				status[0],
				cpuPercent,
				memoryPercent))
	}
	return processes
}
