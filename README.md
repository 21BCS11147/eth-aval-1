# ErrorHandling Smart Contract

This Solidity smart contract demonstrates the use of require(), assert(), and revert() statements for error handling. The contract manages user balances and provides methods to deposit and withdraw funds based on various conditions.

## Requirements

- Solidity version: 0.8.0 or compatible

## Features

1. `deposit(uint _amount)`: Allows users to deposit funds into their account.

2. `withdrawRequire(uint _amount)`: Enables users to withdraw funds with a requirement that their address matches the `expectedAddress` and the withdrawal amount does not exceed their balance.

3. `withdrawAssert(uint _amount)`: Similar to `withdrawRequire`, but uses `assert` statements for validation.

4. `withdrawRevert(uint _amount)`: Similar to `withdrawRequire`, but uses `revert` statements for validation.

5. `setExpectedAddress(address _newExpectedAddress)`: Allows the contract owner to update the `expectedAddress`.

## Getting Started

1. Clone this repository.

2. Make sure you have Solidity compiler (0.8.0 or compatible) installed.

3. Compile the smart contract using the Solidity compiler.

4. Deploy the contract on an Ethereum-compatible network using your preferred development environment (e.g., Remix, Truffle, Hardhat).

## Usage

- Deploy the contract and set the `expectedAddress` to the desired address.

- Interact with the contract using a wallet or a contract interaction tool.

## License

This project is licensed under the MIT License. See the [LICENSE](https://github.com/21BCS11147/eth-aval-1/tree/main) file for details.
