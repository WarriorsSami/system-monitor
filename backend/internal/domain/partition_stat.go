package domain

import "fmt"

type PartitionStat struct {
	Device     string   `json:"device"`
	Mountpoint string   `json:"mountpoint"`
	Fstype     string   `json:"fstype"`
	Opts       []string `json:"opts"`
}

func NewPartitionStat(device, mountpoint, fstype string, opts []string) *PartitionStat {
	return &PartitionStat{
		Device:     device,
		Mountpoint: mountpoint,
		Fstype:     fstype,
		Opts:       opts,
	}
}

func (d PartitionStat) ToString() string {
	return fmt.Sprintf(
		"Device: %s\nMountpoint: %s\nFstype: %s\nOpts: %v\n",
		d.Device, d.Mountpoint, d.Fstype, d.Opts)
}
