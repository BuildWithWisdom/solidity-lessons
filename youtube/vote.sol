// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Vote {
    uint public totalVotes;
    function addVote() public {
        totalVotes += 1;
    }

    function getTotalVote() public view returns (uint) {
        return totalVotes;
    }
}