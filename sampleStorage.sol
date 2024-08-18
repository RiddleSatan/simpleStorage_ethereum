// SPDX-License-Identifier: MIT
pragma solidity >= 0.8.26;

contract simpleStorage{
    uint public favNum;
    function store(uint _favNum) public {
        favNum=_favNum;
    }
}