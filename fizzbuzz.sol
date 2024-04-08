
// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;





contract FizzBuzz {
    function fizzBuzz(uint256 n) public pure returns (string memory) {
        if (n % 3 == 0 && n % 5 == 0) {
            return "fizz buzz";
        } else if (n % 3 == 0) {
            return "fizz";
        } else if (n % 5 == 0) {
            return "buzz";
        } else {
            return "";
        }
    }
}
