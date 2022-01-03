// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract SimpleStorage {
    // store age person
    // uint -> 0 - 255 (2^8-1)
    // uint256 -> 0 - 2^256-1
    
    uint8 public age;
    
    constructor() {
        age = 10; //initializing age to 10
    }
    
}

// account  -> EVM code -> storage 
