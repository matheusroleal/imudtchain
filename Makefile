setup-go:	## Install all the necessary Go packages
	go get github.com/hyperledger/fabric-contract-api-go/contractapi

build:	## Create imudtchain binary
	go build main.go