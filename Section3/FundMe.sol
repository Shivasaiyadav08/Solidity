//Get funds from Users
//Withdreaw
//Set a min funding value in USD


// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;
contract FundMe{
    uint256 public myvalue=1;
    function fund() public payable {
  //Allow Users to Send Money
  //set minimum value to fund
    myvalue=myvalue+1;
     require(msg.value>1e18,"Too small");

    }
    // function withdraw()public {}
}