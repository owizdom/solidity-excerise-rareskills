// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract Struct{

    struct Basic{
        uint256 a;
        uint256 b;
        uint256 c;

    }

    Basic public myBasic;


    function changeAll (uint256 _a, uint256 _b,uint256 _c) external {
        myBasic.a = _a;
        myBasic.b = _b;
        myBasic.c = _c;
    }

}