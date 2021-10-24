// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";

contract BikeRace is ERC1155 {
    uint256 public constant WATER = 0;
    uint256 public constant FOOD  = 1;
    uint256 public constant ROAD_BIKE     = 2; //NFT
    uint256 public constant MOUNTAIN_BIKE = 3; //NFT
    uint256 public constant UNICYCLE      = 4; //NFT


    constructor() ERC1155("URL") {
        _mint(msg.sender, WATER, 10**21, "");
        _mint(msg.sender, FOOD,  10**21, "");
        _mint(msg.sender, ROAD_BIKE,     1, "");
        _mint(msg.sender, MOUNTAIN_BIKE, 1, "");
        _mint(msg.sender, UNICYCLE,      1, "");
    }
}