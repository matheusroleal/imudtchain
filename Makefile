setup-go:	## Install all the necessary Go packages
	go get github.com/hyperledger/fabric-contract-api-go/contractapi

setup-fabric:	## Install all the necessary Fabric packages
	curl -sSL https://bit.ly/2ysbOFE | bash -s -- 2.2.0 1.4.9

build:	## Create imudtchain binary
	go build main.go

local-network:  
	- cp .env fabric-samples/test-network/docker
	- bash ./local-network.sh
