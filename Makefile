interfaces:
	protoc --go_out=plugins=grpc:./helloworld1 ./helloworld1/helloworld1.proto
	protoc --go_out=plugins=grpc:./helloworld2 ./helloworld2/helloworld2.proto


build:
	go build -o helloworld1/hello1_client helloworld1/client/main.go
	go build -o helloworld1/hello1_server helloworld1/server/main.go

	go build -o helloworld2/hello2_client helloworld2/client/main.go
	go build -o helloworld2/hello2_server helloworld2/server/main.go
