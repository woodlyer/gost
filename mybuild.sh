
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
 # go install https://github.com/go-swagger/go-swagger/cmd
 wget https://github.com/go-swagger/go-swagger/releases/download/v0.30.5/swagger_linux_amd64
 mv swagger_linux_amd64  swagger
 chmod +x swagger
 ./swagger generate spec -o go-gost/x/api/swagger.yaml
}


debug
