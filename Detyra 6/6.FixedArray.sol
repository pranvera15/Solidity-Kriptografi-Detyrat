// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract FixedArraySum {
    uint[5] public numbers; // Array me madhësi fikse 5

    // Funksion për të vendosur vlerat e array-t
    function setValues(uint[5] memory _numbers) public {
        numbers = _numbers;
    }

    // Funksion për të llogaritur shumën e elementeve në array
    function calculateSum() public view returns (uint sum) {
        for (uint i = 0; i < numbers.length; i++) {
            sum += numbers[i];
        }
    }
}
