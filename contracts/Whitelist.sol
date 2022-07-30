// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.4;

contract Whitelist {

    uint8 public maxWhiteListAddresses;

    mapping (address => bool) public whiteList;

    uint8 public totalWhiteListedAddresses;

    constructor(uint8 _maxWhiteListAddresses) {
        maxWhiteListAddresses = _maxWhiteListAddresses;
    }

    function addressToWhitelist() public {
        
       require(!whiteList[msg.sender], "Address already whitelisted");
       require(totalWhiteListedAddresses < maxWhiteListAddresses, "Max whitelisted addresses reached");
         whiteList[msg.sender] = true;
        totalWhiteListedAddresses++;
    }
}

//contractdeployed: 0x094367f34f29FE55b8E3A269feb3F04DdbE199ff
