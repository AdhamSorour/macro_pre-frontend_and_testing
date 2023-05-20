// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Script.sol";
import { Token } from "../src/Token.sol";

contract TokenScript is Script {
    function setUp() public {}

    function run() public {
        // vm.broadcast();
        vm.startBroadcast();
        new Token("token", "TKN");
        vm.stopBroadcast();
    }
}
