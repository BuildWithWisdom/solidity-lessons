// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract PiggyBank {
    uint256 public totalEther = 0;
    address public owner;
    constructor() {
        owner = msg.sender;
    }
    function deposit() public payable {
        totalEther += msg.value;
    }

    function getBalance() public view returns (uint) {
        return totalEther;
    }

    function withdraw() public{
        require(msg.sender == owner, "must be owner");
        payable(owner).transfer(address(this).balance);
    }


}
 
