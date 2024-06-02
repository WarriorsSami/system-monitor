package entities

import "fmt"

type MemoryStat struct {
	Total       uint64  `json:"total"`
	Available   uint64  `json:"available"`
	Used        uint64  `json:"used"`
	UsedPercent float64 `json:"used_percent"`
	Free        uint64  `json:"free"`
}

func NewMemoryStat(total, available, used uint64, usedPercent float64, free uint64) *MemoryStat {
	return &MemoryStat{
		Total:       total,
		Available:   available,
		Used:        used,
		UsedPercent: usedPercent,
		Free:        free,
	}
}

func (m MemoryStat) ToString() string {
	return fmt.Sprintf(
		"Total: %d\nAvailable: %d\nUsed: %d\nUsedPercent: %.2f\nFree: %d\n",
		m.Total, m.Available, m.Used, m.UsedPercent, m.Free)
}
