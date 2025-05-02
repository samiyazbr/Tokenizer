// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

/**
 * @title Token42
 * @dev Implementation of the BEP-20 Token Standard
 * @notice Token42 is a custom token on BNB Smart Chain Testnet
 */
contract Token42 is ERC20, Ownable {
    uint256 private constant INITIAL_SUPPLY = 1000000 * 10**18; // 1 million tokens with 18 decimals

    /**
     * @dev Constructor that mints the initial supply to the deployer
     */
    constructor() ERC20("Token42", "TK42") {
        _mint(msg.sender, INITIAL_SUPPLY);
    }

    /**
     * @dev Allows the owner to mint new tokens
     * @param to The address that will receive the minted tokens
     * @param amount The amount of tokens to mint
     */
    function mint(address to, uint256 amount) public onlyOwner {
        require(to != address(0), "Token42: mint to the zero address");
        _mint(to, amount);
    }

    /**
     * @dev Allows the owner to burn tokens from any address
     * @param from The address to burn tokens from
     * @param amount The amount of tokens to burn
     */
    function burn(address from, uint256 amount) public onlyOwner {
        require(from != address(0), "Token42: burn from the zero address");
        _burn(from, amount);
    }

    /**
     * @dev Returns the number of decimals used to get its user representation
     */
    function decimals() public pure override returns (uint8) {
        return 18;
    }
} 