## Introduction

Upgradable smart contracts refer to the ability to modify or upgrade the functionality of a deployed smart contract without disrupting its existing state or requiring users to interact with a new contract address. This concept is particularly relevant in blockchain systems, where immutability is a fundamental characteristic.

Upgradable smart contracts address this limitation by separating the contract's logic from its storage. The contract logic is placed in a separate contract, often referred to as a "proxy" or "implementation contract," while the contract state is stored in another contract known as a "storage contract.”

When an upgradable contract needs to be upgraded, a new version of the implementation contract is deployed with the desired modifications. The storage contract remains unchanged, preserving the existing state and data. The proxy contract is then updated to redirect all function calls to the new implementation contract.

This upgrade process allows for the seamless transition between different versions of a smart contract, providing flexibility, maintainability, and the ability to evolve over time. It also avoids the need for users to interact with multiple contract addresses or transfer their data to a new contract.

Implementing upgradable smart contracts requires careful consideration of the contract architecture, storage layout, and upgradeability mechanisms. Various approaches and frameworks exist for achieving upgradability, such as the use of proxy patterns, delegate calls, or upgradeable contract libraries.


Can do
- Contract Logic Modification: You can modify the logic and behavior of the smart contract by adding, removing, or modifying functions, variables, and calculations.
- Gas Optimization: You can optimize the gas usage of the smart contract by improving the code efficiency, reducing unnecessary computations, or implementing gas-saving techniques.
- Parameter Updates: You can update the parameters of the smart contract to adjust certain functionalities or adapt to changing requirements.
- Event Logging: You can add or modify event logging mechanisms to improve transparency and monitoring capabilities

Can't do
- Immutable State: You generally can't modify the existing state (data) stored on the blockchain.
- Contract Address: You can't change the address of the smart contract once it has been deployed.
- Token Supply: If your smart contract involves a token with a fixed supply, you generally can't change the total supply after deployment.

## Resources

- *[EIP-1967 Transparent Proxy](https://eips.ethereum.org/EIPS/eip-1967).*
- https://eips.ethereum.org/EIPS/eip-2535
- https://blog.openzeppelin.com/the-state-of-smart-contract-upgrades/#diamonds
- https://betterprogramming.pub/not-all-smart-contracts-are-immutable-create-upgradable-smart-contracts-e4e933b7b8a9
- https://forum.openzeppelin.com/t/openzeppelin-upgrades-step-by-step-tutorial-for-hardhat/3580
