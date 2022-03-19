package model

func (UtilLog) TableName() string {
	return "utillog"
}

type UtilLog struct {
	ID               int `gorm:"primaryKey;column:ID;autoIncrement:true"`
	JumlahPengunjung int `gorm:"column:JumlahPengunjung"`
}
