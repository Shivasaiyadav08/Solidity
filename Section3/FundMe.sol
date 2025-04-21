

// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;
import  {PriceConverter} from "./PriceConverter.sol";
contract FundMe {
    using PriceConverter for uint256;
    uint256 public  constant MIN_USD= 5e18;
    address[] public funders;
    mapping(address=>uint256) public addressAmountfunded;
    address public immutable i_owner;
    constructor(){
      i_owner=msg.sender;
    }
    function withdraw() public onlyOwner{
        for(uint256 i=0;i<funders.length;i++){
            address funder=funders[i];
            addressAmountfunded[funder]=0;
        }
        funders=new address[](0);
      (bool callsuccess,)=payable (msg.sender).call{value:address(this).balance}("");
      require(callsuccess,"failed");
    }    

    function fund() public payable {
        require( msg.value.getconversionrate()>= MIN_USD , "Too small");
        funders.push(msg.sender);
        addressAmountfunded[msg.sender]+= msg.value;
    }

  modifier onlyOwner(){
    require(msg.sender==i_owner,"You are not owner");
    _;
  }
    receive() external payable {
      fund();
     }
     fallback() external payable {
      fund();
      }

   
}
