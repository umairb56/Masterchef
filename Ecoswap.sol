// SPDX-License-Identifier: MIT
pragma solidity ^0.8.6;
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
contract Ecoswap is ERC20, ERC20Burnable, Ownable {
    event Mint(address to, uint amount);
    constructor() ERC20("Ecoswap", "ECO") {}
    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
        emit Mint(to, amount);
    }
}
