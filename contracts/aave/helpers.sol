//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Basic} from "../common/basic.sol";
import {IPeerToPlay} from "./interface.sol";

abstract contract Helpers is Basic {
    // IPeerToPlay internal constant peerToPlay = ListInterface(0xB1017f5559F0cb53928D526179E8E10Ba7073bc8);
    IPeerToPlay internal peerToPlayContract =
        IPeerToPlay(0xF61Faa19421e086634C320bd89C035DE943Ac36d);
}
