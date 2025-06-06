// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Kalkulator {
    uint public x;
    uint public y;

    // Konstruktor për inicializimin e x dhe y
    constructor(uint _x, uint _y) {
        x = _x;
        y = _y;
    }

    // Funksion për mbledhje
    function shuma() public view returns (uint) {
        return x + y;
    }

    // Funksion për shumëzim
    function shumezimi() public view returns (uint) {
        return x * y;
    }

    // Funksion për pjesëtim (kontrollojmë për ndarje me zero)
    function pjesto() public view returns (uint) {
        require(y != 0, "Nuk lejohet ndarja me zero");
        return x / y;
    }
}
