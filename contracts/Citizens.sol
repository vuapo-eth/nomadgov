//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.14;

import "hardhat/console.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract Citizens is Ownable {

    Citizen[] public citizens;

    constructor() {
        citizens.push(Citizen(0, ""));
    }

    function register_citizen(string memory name) onlyOwner public {
        uint256 id = amount_of_citizens();
        citizens.push(Citizen(id, name));
    }

    function amount_of_citizens() public view returns(uint256) {
        return citizens.length-1;
    }
}

struct Citizen {
    uint256 id;
    string name;
}