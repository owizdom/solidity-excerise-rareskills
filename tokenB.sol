// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.19;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract TokenB is ERC20 {
    address public owner1;
    uint256 initialSupply = 1000 * 1e18;

    constructor() ERC20("Token B", "TKB") {
        owner1 = msg.sender;
        _mint(owner1, initialSupply);
    }
}
