// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyName{
    string public emri;

    constructor(string memory _emri) {
        emri = _emri;
    }

    function ndryshoEmrin(string memory _emriRi) public {
        emri = _emriRi;
    }
}
