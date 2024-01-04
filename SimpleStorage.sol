//SPDX-License-Identifier:MIT
pragma solidity 0.8.8;

contract SimpleStorage {
    uint256  favoriteNumber;
    struct people{
        uint256 favoriteNumber;
        string name;
    }
    //saad
    
    mapping (string => uint256) public nameToFavoritenumber;
    people [] public peoples;
    function store (uint256 _favoriteNumber) public virtual
    {
        favoriteNumber=_favoriteNumber;
    }

    function retrive() public view returns(uint256 ) {
        return favoriteNumber;
    }

    function addPerson (string memory _name, uint256 _favoriteNumber) public{
        peoples.push(people(_favoriteNumber,_name));
        nameToFavoritenumber[_name]=_favoriteNumber;
    }
}