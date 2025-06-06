// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MinMaxArray {
    uint[] public numbers;

    // Shton një numër në array
    function addNumber(uint _number) public {
        numbers.push(_number);
    }

    // Rikthen numrin maksimal
    function max() public view returns (uint) {
        require(numbers.length > 0, "Nuk ka numra te ruajtur");
        uint maxValue = numbers[0];
        for (uint i = 1; i < numbers.length; i++) {
            if (numbers[i] > maxValue) {
                maxValue = numbers[i];
            }
        }
        return maxValue;
    }

    // Rikthen numrin minimal
    function min() public view returns (uint) {
        require(numbers.length > 0, "Nuk ka numra te ruajtur");
        uint minValue = numbers[0];
        for (uint i = 1; i < numbers.length; i++) {
            if (numbers[i] < minValue) {
                minValue = numbers[i];
            }
        }
        return minValue;
    }

    // Rikthen të gjithë numrat për verifikim
    function getAllNumbers() public view returns (uint[] memory) {
        return numbers;
    }
}
