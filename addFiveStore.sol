//SPDX-License-Identifier:MIT

pragma solidity >= 0.8.26;

import {simpleStorage} from "./simpleStorage.sol";

contract addFiveStore is simpleStorage{//addFiveStore inherited the property of simpleStorage
    
 function store(uint256 _newNumber) public override {//this is function override but in order to do that you have to use override keyword and add virtal keyword into the function that is being override
    myfavNum=_newNumber + 5;
 }

}