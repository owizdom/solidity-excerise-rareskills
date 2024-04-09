// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Encoder {
    /* This exercise assumes you know how abi encoding works.
        1. In the `createEncodedData` function below, write the logic that creates an encoded data of a `string` and `uint256`, based on the function parameters
        2. Assign the encoded data to the `encoded` state variable and return it
    */
    bytes public encoded;

    function createEncodedData(
        string memory _word,
        uint256 _num
    ) public returns (bytes memory) {
        // Encode the parameters using abi.encode()
        encoded = abi.encode(_word, _num);
        
        // Return the encoded data
       return encoded;
    }

    function get() public view returns (bytes memory){
        return encoded;
    } 

  
}
