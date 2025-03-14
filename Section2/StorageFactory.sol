
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;
import {simpleStorage} from "./SimpleStorage.sol";
contract storagefactory{
   simpleStorage[] public list;

    function createSimplestorageContract() public {

        simpleStorage storee = new simpleStorage();
        list.push(storee);
    }
    function sfstore(uint256 index,uint256 num)public {
          simpleStorage storageContract=list[index];
          storageContract.store(num);
    }
    function sfget(uint256 index)  public view returns(uint256){
        simpleStorage storageContract=list[index];
        return (storageContract.retrieve());
    }
}