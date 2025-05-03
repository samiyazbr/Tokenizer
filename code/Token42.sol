// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";

/**
 * @title Token42
 * @dev Implementation of the BEP-20 Token Standard with enhanced security features
 * @notice Token42 is a custom token on BNB Smart Chain Testnet
 */
contract Token42 is ERC20, Ownable, ReentrancyGuard {
    uint256 private constant INITIAL_SUPPLY = 1000000 * 10**18; // 1 million tokens with 18 decimals
    uint256 private constant MAX_SUPPLY = 10000000 * 10**18; // 10 million tokens maximum
    bool private _mintingEnabled = true;
    bool private _burningEnabled = true;

    // Events for better tracking
    event MintingEnabled(bool enabled);
    event BurningEnabled(bool enabled);
    event TokensMinted(address indexed to, uint256 amount);
    event TokensBurned(address indexed from, uint256 amount);

    /**
     * @dev Constructor that mints the initial supply to the deployer
     */
    constructor() ERC20("Token42", "TK42") Ownable(msg.sender) {
        _mint(msg.sender, INITIAL_SUPPLY);
    }

    /**
     * @dev Allows the owner to mint new tokens with supply cap check
     * @param to The address that will receive the minted tokens
     * @param amount The amount of tokens to mint
     */
    function mint(address to, uint256 amount) 
        public 
        onlyOwner 
        nonReentrant 
        returns (bool) 
    {
        require(_mintingEnabled, "Token42: minting is disabled");
        require(to != address(0), "Token42: mint to the zero address");
        require(totalSupply() + amount <= MAX_SUPPLY, "Token42: exceeds max supply");
        
        _mint(to, amount);
        emit TokensMinted(to, amount);
        return true;
    }

    /**
     * @dev Allows the owner to burn tokens from any address with additional checks
     * @param from The address to burn tokens from
     * @param amount The amount of tokens to burn
     */
    function burn(address from, uint256 amount) 
        public 
        onlyOwner 
        nonReentrant 
        returns (bool) 
    {
        require(_burningEnabled, "Token42: burning is disabled");
        require(from != address(0), "Token42: burn from the zero address");
        require(balanceOf(from) >= amount, "Token42: burn amount exceeds balance");
        
        _burn(from, amount);
        emit TokensBurned(from, amount);
        return true;
    }

    /**
     * @dev Toggle minting functionality
     */
    function toggleMinting() public onlyOwner {
        _mintingEnabled = !_mintingEnabled;
        emit MintingEnabled(_mintingEnabled);
    }

    /**
     * @dev Toggle burning functionality
     */
    function toggleBurning() public onlyOwner {
        _burningEnabled = !_burningEnabled;
        emit BurningEnabled(_burningEnabled);
    }

    /**
     * @dev Returns the number of decimals used to get its user representation
     */
    function decimals() public pure override returns (uint8) {
        return 18;
    }

    /**
     * @dev Returns the maximum supply cap
     */
    function maxSupply() public pure returns (uint256) {
        return MAX_SUPPLY;
    }

    /**
     * @dev Returns whether minting is enabled
     */
    function isMintingEnabled() public view returns (bool) {
        return _mintingEnabled;
    }

    /**
     * @dev Returns whether burning is enabled
     */
    function isBurningEnabled() public view returns (bool) {
        return _burningEnabled;
    }
} 