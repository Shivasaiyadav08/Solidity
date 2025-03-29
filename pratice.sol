//SPOX-License-Identifier: MIT

// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract demo{
   
    struct person{
        string name;
        uint256 favno;
    }
    mapping (string=>uint256) public fav;
    person[] public  people;
    function add(string memory _name,uint256 _favno)  public{
        fav[_name] = _favno;
        people.push(person(_name,_favno));
    }
  

}