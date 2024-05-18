package domain

import "fmt"

type ConnectionStat struct {
	Name      string `json:"name"`
	BytesSent uint64 `json:"bytes_sent"`
	BytesRecv uint64 `json:"bytes_recv"`
}

func NewConnectionStat(name string, bytesSent, bytesRecv uint64) *ConnectionStat {
	return &ConnectionStat{
		Name:      name,
		BytesSent: bytesSent,
		BytesRecv: bytesRecv,
	}
}

func (c *ConnectionStat) ToString() string {
	return fmt.Sprintf(
		"Name: %s\nBytes sent: %d\nBytes received: %d\n",
		c.Name, c.BytesSent, c.BytesRecv)
}
