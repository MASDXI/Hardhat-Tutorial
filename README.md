# Tutorial-using-Hardhat

Tutorial using Hardhat(Buidler) complie, deploy and automated unit tests Solidity.

To run these tutorials, you must have the following installed:

- [nodejs](https://nodejs.org/en/)

- [nvm](https://github.com/nvm-sh/nvm)

```bash
$ npm install
```

to compile your smart contract to get an ABI and artifact of a smart contract for unit test using the command.

```bash
$ npx hardhat compile
```

for a unit testing smart contract using the command line.

```
$ npx hardhat test
```
expecting `sample-test.js` result.
```bash

  Proof Of Existence
    ✓ notarize document (xxms)
    ✓ check document (xxms)
    ✓ proofFor document (xxxms)


  3 passing (1s)

```

after testing if you want to deploy the contract using the command line.

```bash

$ npx hardhat accounts
$ npx hardhat node
# Open another Terminal
$ npx hardhat run scripts/sample-script.js --network localhost

# result in npx hardhat node Terminal
web3_clientVersion
eth_chainId
eth_accounts
eth_chainId
eth_estimateGas
eth_gasPrice
eth_sendTransaction
  Contract deployment: <UnrecognizedContract>
  Contract address:    0x5fbdb2315678afecb367f032d93f642f64180aa3
  Transaction:         0x4d8ca847a078a99df24a26366e6cea68d5432cb589621fecba41724a7746c945
  From:                0xf39fd6e51aad88f6f4ce6ab8827279cfffb92266
  Value:               0 ETH
  Gas used:            323170 of 323170
  Block #1:            0xee69d27c203d85dc181b3813ffbdf0ba845fe3e0d71eb03d48caac0a44eb585d

eth_chainId
eth_getTransactionByHash
eth_blockNumber
eth_chainId (2)
eth_getTransactionReceipt

# result in npx hardhat run Terminal
Proof Of Existence deployed to: 0x5FbDB2315678afecb367f032d93F642f64180aa3

```
your can edit deploy network endpoint at `hardhat.config.js`.

```javascript
module.exports = {
  networks: {
        {
        localhost: {
          url: "http://127.0.0.1:8545"
        },
        hardhat: {
          // See its defaults
        }
  }
};
```
