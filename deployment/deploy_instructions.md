# Token42 Deployment Instructions

This document provides step-by-step instructions for deploying the Token42 smart contract on the BNB Smart Chain Testnet.

## Prerequisites

1. MetaMask Wallet
   - Install MetaMask browser extension
   - Create a new wallet or import existing one
   - Ensure you have some tBNB for deployment

2. BNB Smart Chain Testnet Configuration
   - Open MetaMask
   - Click on the network dropdown
   - Select "Add Network"
   - Enter the following details:
     - Network Name: BNB Smart Chain Testnet
     - RPC URL: https://data-seed-prebsc-1-s1.binance.org:8545/
     - Chain ID: 97
     - Symbol: tBNB
     - Block Explorer URL: https://testnet.bscscan.com

3. Get Test BNB (tBNB)
   - Visit the BNB Smart Chain Faucet: https://testnet.bnbchain.org/faucet-smart
   - Enter your wallet address
   - Request test BNB

## Deployment Steps

1. Open Remix IDE
   - Visit https://remix.ethereum.org/
   - Create a new workspace

2. Install Dependencies
   - In the File Explorer, create a new file named `Token42.sol`
   - Copy the contract code from the repository
   - Install OpenZeppelin contracts in Remix:
     - Go to the "Solidity Compiler" tab
     - Click on "Compile Token42.sol"
     - Remix will automatically install required dependencies

3. Compile the Contract
   - Select Solidity compiler version 0.8.x
   - Enable optimization
   - Click "Compile Token42.sol"
   - Check for any compilation errors

4. Deploy the Contract
   - Go to the "Deploy & Run Transactions" tab
   - Select "Injected Web3" as the environment
   - Ensure MetaMask is connected to BNB Testnet
   - Click "Deploy"
   - Confirm the transaction in MetaMask
   - Wait for deployment confirmation

5. Verify the Contract
   - Copy the deployed contract address
   - Go to https://testnet.bscscan.com/
   - Search for your contract address
   - Click "Verify and Publish"
   - Select "Solidity (Single file)"
   - Enter contract details:
     - Compiler Type: Solidity (Single file)
     - Compiler Version: v0.8.x
     - Open Source License Type: MIT
   - Paste the contract code
   - Click "Verify and Publish"

## Post-Deployment

1. Add Token to MetaMask
   - Open MetaMask
   - Click "Add Token"
   - Select "Custom Token"
   - Enter the contract address
   - Token symbol and decimals will auto-populate
   - Click "Add Token"

2. Testing
   - Verify initial supply
   - Test token transfers
   - Test minting (owner only)
   - Test burning (owner only)

## Troubleshooting

1. Deployment Fails
   - Ensure you have enough tBNB
   - Check MetaMask is on BNB Testnet
   - Verify gas settings

2. Contract Verification Fails
   - Ensure exact compiler version match
   - Check for any optimization settings
   - Verify all constructor arguments

3. Token Not Showing in MetaMask
   - Double-check contract address
   - Ensure correct network
   - Try removing and re-adding the token

## Security Notes

- Keep your private keys secure
- Never share your seed phrase
- Always verify contract addresses
- Use hardware wallet for large amounts 