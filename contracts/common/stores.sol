//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {MemoryInterface, PeerToPlayMapping, ListInterface, PeerToPlayConnectors} from "./interfaces.sol";

abstract contract Stores {
    /**
     * @dev Return ethereum address
     */
    address internal constant ethAddr =
        0xEeeeeEeeeEeEeeEeEeEeeEEEeeeeEeeeeeeeEEeE;

    /**
     * @dev Return Wrapped ETH address
     */
    address internal constant wethAddr =
        0xfFf9976782d46CC05630D1f6eBAb18b2324d6B14;

    /**
     * @dev Return memory variable address
     */
    MemoryInterface internal constant PeerToPlayMemory =
        MemoryInterface(0x7fA388CC91FbC78A460bdE9F05f48A373F74D09d);

    /**
     * @dev Return PeerToPlayList address
     */
    ListInterface internal constant PeerToPlayList =
        ListInterface(0xc7aC1B8ff7cF1425Aa00fa1d5AC7ab4f146af88e);

    /**
     * @dev Return connectors registry address
     */
    PeerToPlayConnectors internal constant peerToPlayConnectors =
        PeerToPlayConnectors(0x9A019F5514B9e893E05735f5230D7c27cFD7B09C);

    /**
     * @dev Get Uint value from PeerToPlayMemory Contract.
     */
    function getUint(uint getId, uint val) internal returns (uint returnVal) {
        returnVal = getId == 0 ? val : PeerToPlayMemory.getUint(getId);
    }

    /**
     * @dev Set Uint value in PeerToPlayMemory Contract.
     */
    function setUint(uint setId, uint val) internal virtual {
        if (setId != 0) PeerToPlayMemory.setUint(setId, val);
    }
}
