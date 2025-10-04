// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Ownable {
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Only Owner");
        _;
    }

    function setOwner(address _owner) external onlyOwner{
        require(_owner != address(0), "Not a Valid Address");
         owner = _owner;
    }

    function onlyOwnerCanCallThisContract() external onlyOwner {
        // Owner
    }

    function anyOneCanCallThisContract() external {
        // anyone
    }

}