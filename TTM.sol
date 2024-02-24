// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Permit.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Capped.sol";

contract TTM is ERC20, ERC20Burnable, Ownable, ERC20Permit, ERC20Capped {
    uint256 public capacity = 1000000000000 * 10**(decimals());

    constructor(address initialOwner) 
        ERC20("To The Moon", "TTM")
        Ownable(initialOwner)
        ERC20Permit("To The Moon")
        ERC20Capped(cappacity)
    {
        _mint(initialOwner, capacity);
    }

    // The following functions are overrides required by Solidity.

    function _update(address from, address to, uint256 value)
        internal
        override(ERC20, ERC20Capped)
    {
        super._update(from, to, value);
    }
}
