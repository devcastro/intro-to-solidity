// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract AdvanceStorage {
    mapping(address => uint8) public ages;
    
    // register -> people can register with address and age 
    function register(uint8 age) external returns(bool){
        // it will look like arrays in a table [address 1 - age1]
    
        ages[msg.sender] = age;
        
        return true;
    }
}
