// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
 
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
 
import "https://github.com/umairb56/blockchain-repository/blob/main/Ecoswap.sol";
 
contract Syrup is ERC20, ERC20Burnable, Ownable {
    Ecoswap public cake;
 
    constructor(Ecoswap _cake) ERC20("Syrup", "SYRUP") {
        cake = _cake;
    }
 
    function safeCakeTransfer(address _to, uint256 _amount) public onlyOwner {
        uint256 cakeBal = cake.balanceOf(address(this));
        if (_amount > cakeBal) {
            cake.transfer(_to, cakeBal);
        } else {
            cake.transfer(_to, _amount);
        }
    }
 
    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
 
    function burn(address from, uint256 amount) public onlyOwner {
        _burn(from, amount);
    }
}
