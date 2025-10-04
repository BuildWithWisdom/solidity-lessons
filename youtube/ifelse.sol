// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Decide {
    function canVote(uint age) public pure returns (string memory){
        if(age < 18 && age != 0) {
            return "This Person Cannot Vote";
        } else if (age >= 18 && age <= 70) {
            return "This Person is Eligible to Vote";
        }
        return "Wrong age";
    }
}