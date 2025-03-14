
// SPDX-License-Identifier: MIT

pragma solidity 0.8.26;


import {simpleStorage} from "./SimpleStorage.sol";

contract AddFive is simpleStorage{
    function store(uint256 num) override  public  {
        myFavoriteNumber=num+5;
    }
}