# Tutorial-using-Hardhat

### TODO List
### - unit-test is not coverage 100%
### - update README.md

Tutorial using Hardhat(Builer) complie, deploy and automated unit tests Solidity.

To run these tutorials, you must have the following installed:

```
$ npm install
```

for complile your smartcontract to get an abi and artifact of smartcontract for unit test using command.

```
$ npx hardhat compile
```

for unit testing smartcontract using command.

```
$ npx hardhat test
```
expecting `sample-test.js` result 
```

TODO adding result
>
>

```

after testing if you want to deploy contract using command.

```
$ npx hardhat run scripts/sample-script.js --network localhost

TODO adding result
>
>

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
