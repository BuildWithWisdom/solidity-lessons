// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

// require, revert, assert
// - gas refund, state updates are reverted
// custom error - save gas

contract Error {
    function testRequire(uint _n) public pure {
        require(_n <= 10, "_n must be greater 10");
    }

    function testReverse(uint _n) public pure {
        if(_n > 10) {
            revert("_n must be greater 10");
        }
    }

    uint num = 123;
    function testAssert() public view {
        assert(num == 123);
    }

    function changeNum () public {
        num += 1;
    }
}