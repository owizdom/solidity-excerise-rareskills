// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract NestedArray {
    uint256[][] public arr;

    function setArr(uint256[][] memory newArr) public {
        arr = newArr;
    }

    /**
     * This function is expected to get the sum of all members of each nested array and finally return the sum of all the nested sums
     * Example: [[1,2], [3,4]] this should return 1 + 2 + 3 + 4 = 10
     */
    function getNestedSum() public view returns (uint256) {
        uint256 totalSum = 0;
        
        // Iterate over each nested array
        for (uint256 i = 0; i < arr.length; i++) {
            // Iterate over each element in the nested array and calculate the sum
            for (uint256 j = 0; j < arr[i].length; j++) {
                totalSum += arr[i][j];
            }
        }
        
        return totalSum;
    }
}
