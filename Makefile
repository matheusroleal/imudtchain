setup-go:	## Install all the necessary Go packages
	go get github.com/hyperledger/fabric-contract-api-go/contractapi

setup-python:	## Install all the necessary python packages
	pip install -r requirements.txt

setup-fabric:	## Install all the necessary Fabric packages
	curl -sSL https://bit.ly/2ysbOFE | bash -s -- 2.2.0 1.4.9

setup: setup-go setup-python setup-fabric ## Install all the necessary packages

build:	## Create imudtchain binary
	go build main.go

local-test:  ## Start a local network
	- cp .env fabric-samples/test-network/docker
	- bash ./local-network.sh

help:
	@echo "---------------- HELP ---------------------"
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/\://'| sed -e 's/##//'