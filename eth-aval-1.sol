// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SmartContract {
    function processNumbers(uint256 num1, uint256 num2) public pure returns (uint256) {
        // Using require()
        require(num1 != 0, "Number 1 should not be zero");
        require(num2 != 0, "Number 2 should not be zero");

        // Using assert()
        uint256 sum = num1 + num2;
        assert(sum >= num1 && sum >= num2);

        // Using revert()
        if (num1 > num2) {
            revert("Number 1 should be smaller than or equal to Number 2");
        }

        // Perform some other operations if needed

        return sum;
    }
}
