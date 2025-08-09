// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18; // this is version of solidty

contract SimpleStorage {
    uint256 myFavoriteNumber;

    //  uint256[] listOfFavoriteNumbers;

    struct Person {
        uint256 favoriteNumber;
        string name;
    }

    Person[] public listOfPeople;

    // mapping is a key-value pair
    mapping(string => uint256) public nameToFavoriteNumber;

    function store(uint256 _favoriteNumber) public virtual {
        myFavoriteNumber = _favoriteNumber;
    }

    function retrieve() public view returns (uint256) {
        return myFavoriteNumber;
    }

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        Person memory newPerson = Person(_favoriteNumber, _name);
        listOfPeople.push(newPerson);
        nameToFavoriteNumber[_name] = _favoriteNumber;

        // listOfPeople.push( Person(_favoriteNumber, _name)); second method
    }
}
