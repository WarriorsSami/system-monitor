package domain

import "fmt"

type UserStat struct {
	Name     string `json:"name"`
	Terminal string `json:"terminal"`
}

func NewHostUserStat(name, terminal string) *UserStat {
	return &UserStat{
		Name:     name,
		Terminal: terminal,
	}
}

func (h UserStat) ToString() string {
	return fmt.Sprintf(
		"Name: %s\nTerminal: %s\n",
		h.Name, h.Terminal)
}
