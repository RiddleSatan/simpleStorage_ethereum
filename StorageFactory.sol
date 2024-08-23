// SPDX-License-Identifier: MIT

pragma solidity >=0.8.26;

import {simpleStorage} from "./simpleStorage.sol";

contract StorageFactory {
    // simpleStorage public mySimpleStorage; //the reason why we use simpleStorage to create its instace is because the new simpleStorage() when deployed returns the address of the contract But if u use address datatype to create the mySimpleStorage instead then in thar case you need to handle te address according to that as the variable created by the address key word are use to store the etherium address rather than contract adress

    simpleStorage[] public listOfSimpleStorageContracts;

    function createSimpleStorageContract() public {
        simpleStorage newSimpleStorageContracts = new simpleStorage();
        listOfSimpleStorageContracts.push(newSimpleStorageContracts);
    }

    function sfStore(uint256 _index, uint256 _number) public {
        simpleStorage mySimpleStorage = listOfSimpleStorageContracts[_index];
        mySimpleStorage.store(_number);
    }

    function sfGet(uint256 _index) public view returns (uint256) {
        simpleStorage mySimpleStorage = listOfSimpleStorageContracts[_index];
        return mySimpleStorage.getVal();
    }
}
