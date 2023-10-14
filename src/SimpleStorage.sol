// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

contract SimpleStorage {
    uint myfavoriteNumber;

    struct Person {
        string name;
        uint favoriteNumber;
    }

    Person[] public listOfPeople;

    mapping(string => uint) public nameToFavoriteNumber;

    function store(uint favoriteNumber) public virtual {
        myfavoriteNumber = favoriteNumber;
    }

    function retrieve() public view returns (uint) {
        return myfavoriteNumber;
    }

    function addPerson(string memory name, uint favoriteNumber) public {
        Person memory person = Person({
            name: name,
            favoriteNumber: favoriteNumber
        });
        listOfPeople.push(person);
        nameToFavoriteNumber[name] = favoriteNumber;
    }
}
