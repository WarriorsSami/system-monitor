package entities

import "fmt"

type ProcessStat struct {
	Pid           int32   `json:"pid"`
	Name          string  `json:"name"`
	Status        string  `json:"status"`
	CPUPercent    float64 `json:"cpu_percent"`
	MemoryPercent float32 `json:"memory_percent"`
}

func NewProcessStat(pid int32, name, status string, cpuPercent float64, memoryPercent float32) *ProcessStat {
	return &ProcessStat{
		Pid:           pid,
		Name:          name,
		Status:        status,
		CPUPercent:    cpuPercent,
		MemoryPercent: memoryPercent,
	}
}

func (p *ProcessStat) ToString() string {
	return fmt.Sprintf(
		"PID: %d, Name: %s, Status: %s, CPU Percent: %.2f, Memory Percent: %.2f",
		p.Pid, p.Name, p.Status, p.CPUPercent, p.MemoryPercent)
}
