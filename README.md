# Hello Smart Contract

Simple Hello World example of Ethereum Smart Contract

## Setup

* Install [Homebrew](https://brew.sh/)
* Install [Node](https://nodejs.org/)
* Install [Geth](https://www.ethereum.org/cli)
```
$> brew update
$> brew upgrade
$> brew tap ethereum/ethereum
$> brew install ethereum
```
* Install [Truffle](http://truffleframework.com/) and [ganache-cli](https://github.com/trufflesuite/ganache-cli)
```
$> npm install -g truffle
$> npm install -g ganache-cli
```

## Running

* Open a new terminal window and run ```ganache-cli```
* Open another terminal window and clone the project
* cd hello-smart-contracts
* truffle test


## Playing with REPL

### Before we play with the contract we need to deploy it using ```truffle migrate``` (make sure your ganache-cli is running)
* truffle migrate --reset
* truffle console
```
   truffle(development)> var hw = HelloWorld.at(HelloWorld.address)
   undefined
   truffle(development)> hw.sayHello("Nilanjan")
   'Hello Nilanjan'
   truffle(development)>
```   
