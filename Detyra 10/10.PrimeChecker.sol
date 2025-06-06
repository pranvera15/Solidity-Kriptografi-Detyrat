// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract PrimeChecker {
    uint private number; // numri për të kontrolluar
    string private message; // mesazhi që kthehet

    // Vendos numrin që do kontrollohet
    function setNumber(uint _num) public {
        number = _num;
        if (number < 2) {
            message = "Nuk eshte numer i thjeshte";
            return;
        }
        for (uint i = 2; i <= number / 2; i++) {
            if (number % i == 0) {
                message = "Nuk eshte numer i thjeshte";
                return;
            }
        }
        message = "Eshte numer i thjeshte";
    }

    // Kthen mesazhin për statusin e numrit
    function getMessage() public view returns (string memory) {
        return message;
    }

    // Opsionale: për ta parë numrin që u vendos
    function getNumber() public view returns (uint) {
        return number;
    }
}
