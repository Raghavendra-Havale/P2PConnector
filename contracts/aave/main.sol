//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/**
 * @title Authority.
 * @dev Manage Authorities to DSA.
 */

import {AccountInterface} from "../common/interfaces.sol";
import {Stores} from "../common/stores.sol";
import {Helpers} from "./helpers.sol";
import {Events} from "./events.sol";

abstract contract PeerConnector is Helpers, Events {
    function registerPlayer(
        string memory playerName
    ) external returns (string memory _eventName, bytes memory _eventParam) {
        uint256 playerId = peerToPlayContract.registerPlayer(playerName);
        _eventName = "LogRegistered(address,uint256,string)";
        _eventParam = abi.encode(address(this), playerId, playerName);
    }
}

contract ConnectPeerToPlay is PeerConnector {
    string public constant name = "ConnectPeerToPlay-v1";
}
