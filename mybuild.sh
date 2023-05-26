
debug(){
  go build -gcflags=all="-N -l" ./cmd/gost
}


release(){
  go build -ldflags "-s -w"  ./cmd/gost
}


debug
