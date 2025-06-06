// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract SendEther {
    function sendViaTransfer(address payable _to) public payable {
        _to.transfer(msg.value);
    }

    function sendViaCall(address payable _to) public payable {
        (bool sent, ) = _to.call{value: msg.value}("");
        require(sent, "Failed to send Ether");
    }

    function callFallbackWithData(address payable _to) public payable {
        (bool sent, ) = _to.call{value: msg.value}(abi.encodeWithSignature("doesNotExist()"));
        require(sent, "Fallback failed");
    }
}
