// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;
contract recive{
    uint256 public r;
    receive() external payable {
        r=1;
     }
     fallback() external payable { 
        r=2;
     }
 }