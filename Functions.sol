// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract Functions {
    // data 
    //setData -> we set data to the new value we passed
    //setComputedData -> we set data to the value we are passing multiplied by the multiplier
    //setMultiplier  i.e. int or uint256 = 10 -> result will be new value of data varriable
    
    uint256 public data;
    uint256 public multiplier;
    address public owner;
    
    
    constructor(uint256 initialValue, uint256 initialMultiplier){      //initialize data 
        data = initialValue;
        multiplier = initialMultiplier;
        owner = msg.sender;
    }
    
    function setMultiplier(uint256 newMultiplier) external onlyOwner returns(bool){
        multiplier = newMultiplier;
        return true;
    }
    
    function setData(uint256 newData) public onlyOwner returns(bool) {
        data = newData;
        return true;
    }
    
    function setComputedData(uint256 newData) external onlyOwner returns(bool){
        uint256 dataComputed = computeData(newData);
        return setData(dataComputed);
    }
    
    function computeData (uint256 someData) internal view returns(uint256){
        return someData * multiplier;
    }
    
    modifier onlyOwner {
        require(msg.sender == owner, "invalid owner");
        _; //placeholder represnting the function when the modifier is applied -> executing the function if true 
    }
}






