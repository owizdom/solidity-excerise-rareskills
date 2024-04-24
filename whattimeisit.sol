// SPDX-License-Identifier: MIT

pragma solidity 0.8.19;

contract whattime {
    uint256 public lastcall;

    function check() public view returns (uint256) {
        return block.timestamp;
    }

    function checkonce() public {

        require (block.timestamp > lastcall + 1 days, "not my day");
        lastcall = block.timestamp;
    }

}