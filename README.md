# Token42 - BEP-20 Token on BNB Smart Chain

Token42 is a custom BEP-20 compliant token deployed on the BNB Smart Chain Testnet. This project implements a secure and efficient token with standard ERC20 functionality and additional features for token management.

## 🚀 Features

- BEP-20 compliant token implementation
- Initial supply of 1,000,000 tokens
- 18 decimal places precision
- Owner-controlled minting and burning capabilities
- Secure implementation using OpenZeppelin contracts
- Fully verified and auditable on BSCScan

## 📋 Prerequisites

- [MetaMask](https://metamask.io/) wallet
- BNB Smart Chain Testnet configured in MetaMask
- [Remix IDE](https://remix.ethereum.org/)
- Test BNB (tBNB) for deployment and testing

## 🛠️ Technical Specifications

- **Token Name**: Token42
- **Token Symbol**: TK42
- **Decimals**: 18
- **Initial Supply**: 1,000,000 TK42
- **Blockchain**: BNB Smart Chain Testnet
- **Contract Standard**: BEP-20
- **Solidity Version**: ^0.8.0

## 📦 Project Structure

```
token42/
├── README.md
├── code/
│   └── Token42.sol
├── deployment/
│   └── deploy_instructions.md
│   └── contract_address.txt
├── documentation/
│   └── token_specification.md
│   └── use_case_whitepaper.md
```

## 🚀 Deployment Instructions

1. Open [Remix IDE](https://remix.ethereum.org/)
2. Create a new file and paste the Token42.sol code
3. Install OpenZeppelin contracts in Remix
4. Compile the contract using Solidity v0.8.x
5. Connect MetaMask (ensure it's set to BNB Testnet)
6. Deploy using "Injected Web3" provider
7. Verify the contract on BSCScan

## 🔍 Contract Verification

After deployment, verify the contract on BSCScan by:
1. Copy the deployed contract address
2. Go to BSCScan Testnet
3. Navigate to the "Verify and Publish" section
4. Enter the contract details and source code
5. Verify the contract

## 📝 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## ⚠️ Security

This contract has been implemented with security best practices in mind. However, please conduct your own security audit before using in production.

## 📞 Support

For support, please open an issue in the GitHub repository. 