package domain

import "fmt"

type DiskStat struct {
	Path        string  `json:"path"`
	Fstype      string  `json:"fstype"`
	Total       uint64  `json:"total"`
	Free        uint64  `json:"free"`
	Used        uint64  `json:"used"`
	UsedPercent float64 `json:"usedPercent"`
}

func NewDiskStat(path, fstype string, total, free, used uint64, usedPercent float64) *DiskStat {
	return &DiskStat{
		Path:        path,
		Fstype:      fstype,
		Total:       total,
		Free:        free,
		Used:        used,
		UsedPercent: usedPercent,
	}
}

func (d DiskStat) ToString() string {
	return fmt.Sprintf(
		"Path: %s\nFstype: %s\nTotal: %d\nFree: %d\nUsed: %d\nUsedPercent: %f\n",
		d.Path, d.Fstype, d.Total, d.Free, d.Used, d.UsedPercent)
}
