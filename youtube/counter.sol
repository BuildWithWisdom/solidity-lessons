// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Counter {
    uint public count;

    function incrementCount() public {
         count += 1;
    }

    function decrementCount() public {
         count -= 1;
    }
}