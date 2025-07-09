
// SPDX-License-Identifier: MIT
pragma solidity ^0.8;

contract ReverContract {
    function reserveFucn(string memory str1) public pure returns(string memory) {
        bytes memory strBytes = bytes(str1);
        bytes memory reserveBytes = new bytes(strBytes.length);
        for(uint i = 0; i < strBytes.length; i ++) {
            reserveBytes[strBytes.length - 1] = strBytes[i];
        }
        return string(reserveBytes);
    }
}
