// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

// Data types Value and Reference
contract ValueTypes {
    bool public b = true;
    uint public u = 123; // uint = uint256 0 to 2^256 -1
    int public i = -123; // int = int256 0 to 2^255 -1
    int public maxInt = type(int).max; // find max val of int
    int public minInt = type(int).min; // find min val of int
    address public addr = 0xd9145CCE52D386f254917e481eB44e9943F39138;
    bytes32 public b32 = "byte 32";
}