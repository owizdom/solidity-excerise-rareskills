// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract checkLetter {
    function characterOfString(string memory input, uint256 index) public pure returns (string memory) {
	    bytes memory char = new bytes(1);
	    char[0] = bytes(input)[index];
	    return string(char);
}

}