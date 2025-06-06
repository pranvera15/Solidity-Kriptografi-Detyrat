// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Student {

    // Variablat e studentit
    uint private id;            // ID private
    string public emri;
    string public mbiemri;
    string public drejtimi;

    // Konstruktor për të inicializuar studentin
    constructor(
        uint _id,
        string memory _emri,
        string memory _mbiemri,
        string memory _drejtimi
    ) {
        id = _id;
        emri = _emri;
        mbiemri = _mbiemri;
        drejtimi = _drejtimi;
    }

    // Funksion për të marrë ID-në (opsionale, nëse duhet vetëm për kontroll)
    function getId() public view returns (uint) {
        return id;
    }
}
