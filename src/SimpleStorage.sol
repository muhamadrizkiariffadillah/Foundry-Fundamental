// SPDX-License-Identifier: MIT
pragma solidity 0.8.9;

/// @title A title that should describe the contract/interface
/// @author The name of the author
/// @notice Explain to an end user what this does
/// @dev Explain to a developer any extra details
contract SimpleStorage {
    uint256 myFavoriteNumber;

    struct Person {
        uint256 favoriteNumber;
        string name;
    }

    Person[] public ListOfPeople;

    mapping(string => uint256) public toFavoriteNumber;

    function store(uint256 _favoriteNumber) public {
        myFavoriteNumber = _favoriteNumber;
    }

    function retrieve() public view returns (uint256) {
        return myFavoriteNumber;
    }

    function addPerson(string calldata _name, uint256 _favoriteNumber) public {
        ListOfPeople.push(
            Person({favoriteNumber: _favoriteNumber, name: _name})
        );
        toFavoriteNumber[_name] = _favoriteNumber;
    }
}
