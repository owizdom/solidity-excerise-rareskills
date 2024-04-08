// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract Mean {
    /**
     * The goal of this exercise is to return the mean of the numbers in "arr"
     */
    function mean(uint256[] calldata arr) public view returns (uint256) {
        uint256 sum = 0;
        
        // Calculate the sum of all elements in the array
        for (uint256 i = 0; i < arr.length; i++) {
            sum += arr[i];
        }
        
        // Calculate the mean (average)
        if (arr.length > 0) {
            return sum / arr.length;
        } else {
            return 0; // Return 0 if the array is empty
        }
    }
}
