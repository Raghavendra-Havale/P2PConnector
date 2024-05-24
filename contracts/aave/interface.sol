//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IPeerToPlay {
    function registerPlayer(
        string memory playerName
    ) external returns (uint256);
}
