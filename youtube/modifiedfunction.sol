// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract ModifiedFunc {
    uint public count;
    bool public pause;

    function setPaused(bool _pause) external {
        pause = _pause;
    }

    modifier  WhenNotPaused() {
        require(!pause, "Paused");
        _;
    }

    function inc() external WhenNotPaused{
        count += 1;
    }

    function dec() external WhenNotPaused{
        count -= 1;
    }
}