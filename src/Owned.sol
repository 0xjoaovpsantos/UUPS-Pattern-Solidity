//SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Owned {

    address owner;

    function setOwner(address _owner) internal {
        owner = _owner;
    }
    modifier onlyOwner() {
        require(msg.sender == owner, "Only owner is allowed to perform this action");
        _;
    }
}