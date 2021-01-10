package main

import (
	"log"

	"github.com/hyperledger/fabric-contract-api-go/contractapi"

	"github.com/matheusroleal/imudtchain/chaincode"
)

func main() {
	assetChaincode, err := contractapi.NewChaincode(&chaincode.SmartContract{})
	if err != nil {
		log.Panicf("Error creating imudtchain: %v", err)
	}

	if err := assetChaincode.Start(); err != nil {
		log.Panicf("Error starting imudtchain: %v", err)
	}
}