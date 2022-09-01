package main

import (
	"encoding/json"
	"io/ioutil"
	"log"
	"time"
)

type TimeS struct {
	NowTime time.Time `json:"now_time"`
}

func main() {
	now := time.Now()
	ts := TimeS{now}
	buff, err := json.Marshal(ts)
	if err != nil {
		log.Fatalf(err.Error())
	}
	err = ioutil.WriteFile("result/data.json", buff, 0666)
	if err != nil {
		log.Fatalf(err.Error())
	}
}
