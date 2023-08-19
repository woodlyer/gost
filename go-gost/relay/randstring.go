package relay

import (
	"math/rand"
	"time"
)

func init() {
	rand.Seed(time.Now().UnixNano())
}

var letters = []rune("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ")

// short than 250
// not too long, length vary from 0 to 32
func RandString() string {
	strLen := rand.Intn(32) // [0-32)
	buf := make([]rune, strLen)
	for i := range buf {
		buf[i] = letters[rand.Intn(len(letters))]
	}
	return string(buf)
}
