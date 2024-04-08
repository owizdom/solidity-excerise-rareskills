// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.13;

contract Exponent {
    /*
        This exercise assumes you know how exponent works.
        1. Function `getResult` should return the result of the exponent.
    */

    function getResult(uint256 _base, uint256 _e)
        public
        view
        returns (uint256)
    {
        // your code here
        uint256 result = 1;

        for (uint256 i=0 ; i < _e ; i++) 
        {
            result*= _base;
        }

        return result;
    }
}