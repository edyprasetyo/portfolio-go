package model

import "time"

type Tabler interface {
	TableName() string
}

func (Visitor) TableName() string {
	return "visitor"
}

type Visitor struct {
	IP      string `gorm:"primaryKey"`
	Header1 string
	Header2 string
	Tanggal time.Time
}
