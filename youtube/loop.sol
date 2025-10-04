// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Loop {
    function sumAll (uint range, uint start) public pure returns (uint){
    uint sum = 0;
        for (uint i = start; i <= range; i++) {
             sum += i;
        }
        return sum;
    }
}