package entities

import "fmt"

type SystemStat struct {
	HostStat           *HostStat         `json:"host_stat"`
	UsersStat          []*UserStat       `json:"users_stat"`
	MemoryStat         *MemoryStat       `json:"memory_stat"`
	CPUStat            *CPUStat          `json:"cpu_stat"`
	DiskStat           *DiskStat         `json:"disk_stat"`
	PartitionStat      []*PartitionStat  `json:"partition_stat"`
	NetConnectionsStat []*ConnectionStat `json:"net_connections_stat"`
	ProcessesStat      []*ProcessStat    `json:"processes_stat"`
}

func NewSystemStat(
	hostStat *HostStat,
	usersStat []*UserStat,
	memoryStat *MemoryStat,
	cpuStat *CPUStat,
	diskStat *DiskStat,
	partitionStat []*PartitionStat,
	netConnectionsStat []*ConnectionStat,
	processesStat []*ProcessStat) *SystemStat {
	return &SystemStat{
		HostStat:           hostStat,
		UsersStat:          usersStat,
		MemoryStat:         memoryStat,
		CPUStat:            cpuStat,
		DiskStat:           diskStat,
		PartitionStat:      partitionStat,
		NetConnectionsStat: netConnectionsStat,
		ProcessesStat:      processesStat,
	}
}

func (s *SystemStat) ToString() string {
	var users string
	for _, user := range s.UsersStat {
		users += user.ToString() + "\n"
	}

	var partitions string
	for _, partition := range s.PartitionStat {
		partitions += partition.ToString() + "\n"
	}

	var connections string
	for _, connection := range s.NetConnectionsStat {
		connections += connection.ToString() + "\n"
	}

	var processes string
	for _, process := range s.ProcessesStat {
		processes += process.ToString() + "\n"
	}

	return fmt.Sprintf(
		"HostStat: %s\nUsersStat: %s\nMemoryStat: %s\nCPUStat: %s\nDiskStat: %s\nPartitionStat: %s\nNetConnectionsStat: %s\nProcessesStat: %s",
		s.HostStat.ToString(),
		users,
		s.MemoryStat.ToString(),
		s.CPUStat.ToString(),
		s.DiskStat.ToString(),
		partitions,
		connections,
		processes,
	)
}
