
debug(){
  go build -gcflags=all="-N -l" ./cmd/gost
}


release(){
  go build -ldflags "-s -w"  ./cmd/gost
}


win()
{ 
  GOOS=windows GOARCH=amd64 go build  -ldflags "-s -w" ./cmd/gost
}

swager()
{
 go install https://github.com/go-swagger/go-swagger/cmd
 swagger generate spec -o swagger.yaml
 cp swagger.yaml go-gost/x/api/
}


debug
