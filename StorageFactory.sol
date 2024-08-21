// SPDX-License-Identifier: MIT

pragma solidity >=0.8.26;

import {simpleStorage} from "./simpleStorage.sol";

contract StorageFactory {
    simpleStorage public mySimpleStorage; //the reason why we use simpleStorage to create its instace is because the new simpleStorage() when deployed returns the address of the contract But if u use address datatype to create the mySimpleStorage instead then in thar case you need to handle te address according to that as the variable created by the address key word are use to store the etherium address rather than contract adress

    function createSimpleStorageContract() public {
        mySimpleStorage = new simpleStorage();
    }
}
