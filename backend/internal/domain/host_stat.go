package domain

import "fmt"

type HostStat struct {
	Hostname string `json:"hostname"`
	OS       string `json:"os"`
	Platform string `json:"platform"`
	Procs    uint64 `json:"procs"`
	Uptime   uint64 `json:"uptime"`
}

func NewHostInfoStat(hostname, os, platform string, procs uint64, uptime uint64) *HostStat {
	return &HostStat{
		Hostname: hostname,
		OS:       os,
		Platform: platform,
		Procs:    procs,
		Uptime:   uptime,
	}
}

func (h HostStat) ToString() string {
	return fmt.Sprintf(
		"Hostname: %s\nOS: %s\nPlatform: %s\nProcs: %d\nUptime: %d\n",
		h.Hostname, h.OS, h.Platform, h.Procs, h.Uptime)
}
