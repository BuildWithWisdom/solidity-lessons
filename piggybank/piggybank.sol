// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract SharedPiggyBank {
    mapping(address => uint) balances;
    address public owner;
    constructor() {
        owner = msg.sender;
    }

    function deposit() public payable {
        require(msg.value <= 2 ether, "Should not be more than 2 eth");
        balances[msg.sender] += msg.value;
    }

    function getBalance() public view returns (uint) {
        return balances[msg.sender];
    }

    modifier withdrawerLimit() {
        uint amount = balances[msg.sender];
        require(amount >= 0.01 ether, "You need more balance to withdraw");
        _;
    }

    function withdrawMyFunds(uint withdrawAmount) public withdrawerLimit{
        uint totalAmount = balances[msg.sender];
        require(withdrawAmount <= totalAmount, "No balance to withdraw");
        balances[msg.sender] = totalAmount - withdrawAmount;
        payable (msg.sender).transfer(withdrawAmount);
    }

    function withdraw() public {
        require(msg.sender == owner, "Only owner can withdraw");
        payable(owner).transfer(address(this).balance);
    }
}