// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MathOperations {
    function safeAdd(uint256 a, uint256 b) external pure returns (uint256) {
        require(a + b >= a, "Addition overflow");
        return a + b;
    }

    function safeSub(uint256 a, uint256 b) external pure returns (uint256) {
        require(a >= b, "Subtraction underflow");
        return a - b;
    }

    function assertExample(uint256 a, uint256 b) external pure returns (uint256) {
        assert(a != b);
        return a + b;
    }

    function revertExample() external pure {
        revert("This function always reverts");
    }
}
