// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract ReceiveFallback {
    event Received(address sender, uint amount);
    event FallbackCalled(address sender, uint amount, bytes data);

    receive() external payable {
        emit Received(msg.sender, msg.value);
    }

    fallback() external payable {
        emit FallbackCalled(msg.sender, msg.value, msg.data);
    }

    function getBalance() public view returns (uint) {
        return address(this).balance;
    }
}
