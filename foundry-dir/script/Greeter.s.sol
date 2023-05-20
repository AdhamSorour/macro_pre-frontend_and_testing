// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Script.sol";
import { Greeter } from "../src/Greeter.sol";

contract GreeterScript is Script {
    function setUp() public {}

    function run() public {
        // vm.broadcast();
        vm.startBroadcast();
        new Greeter("hello");
        vm.stopBroadcast();
    }
}
