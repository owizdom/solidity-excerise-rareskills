// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract Decoder {
    /* This exercise assumes you know how abi decoding works.
        1. In the `decodeData` function below, write the logic that decodes a `bytes` data, based on the function parameters
        2. Return the decoded data
    */
    bytes public encoded;

    function decodeData(
        bytes memory _data
    ) public pure returns (string memory, uint256) {
        // Decode the provided bytes data into a string and a uint256
        (string memory _word, uint256 _num) = abi.decode(_data, (string, uint256));
        
        // Return the decoded data
        return (_word, _num);
    }
}
