// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract EvenOddChecker {
    function isEven(uint _num) public pure returns (string memory) {
        if (_num % 2 == 0) {
            return "Numri eshte CIFT";
        } else {
            return "Numri eshte TEK";
        }
    }
}
