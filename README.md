# imudtchain
Hyperledger Fabric Network For Storing Imutable Data

## How it Works
This project propose a solution using the permissioned network Hyperledger Fabric for sharing immutable information between organizations. Companies from all over the world invest heavily in innovation to create answers to the needs presented in the market. In a corporate context, the transaction of information in a secure and inviolable way can be very valuable. Hyperledger provides an alternative to the cryptocurrency-based blockchain model, and focuses on developing blockchain frameworks, tools and libraries to support global enterprise solutions. The focus of Hyperledger is to provide a transparent and collaborative approach to blockchain development.
## Setup
This project is developed in Go but uses the Hyperledger Fabric Samples. So it is necessary to have also python. To install the packages necessary to a local do the following commands:
```
make setup-go
make setup-python
make setup-fabric 
```
You can also just execute a `make setup` to run all the above commands

## How to Test
Application developers can use the [Fabric tutorials](https://hyperledger-fabric.readthedocs.io/en/release-2.2/tutorials.html) to get started building their own solutions. Start working with Fabric by deploying the test network on your local machine. You can then use the steps provided by the Deploying a smart contract to a channel tutorial to deploy and test your smart contracts. For this project, we also created a script based on the offical documentation. Just execute the command: `make local-test`.