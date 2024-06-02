package entities

import "fmt"

type CPUStat struct {
	ModelName  string    `json:"model_name"`
	Family     string    `json:"family"`
	Cores      int32     `json:"cores"`
	Mhz        float64   `json:"mhz"`
	CoresUsage []float64 `json:"cores_usage"`
}

func NewCPUStat(modelName string, family string, cores int32, mhz float64, coresUsage []float64) *CPUStat {
	return &CPUStat{
		ModelName:  modelName,
		Family:     family,
		Cores:      cores,
		Mhz:        mhz,
		CoresUsage: coresUsage,
	}
}

func (c *CPUStat) ToString() string {
	var coresUsage string
	for i, usage := range c.CoresUsage {
		coresUsage += fmt.Sprintf("Core %d: %.2f%%\n", i, usage)
	}

	return fmt.Sprintf(
		"ModelName: %s\nFamily: %s\nCores: %d\nMhz: %.2f\nCores Usage:\n%s",
		c.ModelName, c.Family, c.Cores, c.Mhz, coresUsage)
}
