// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/Greeter.sol";

contract GreeterTest is Test {
    Greeter public greeter;

    function setUp() public {
        greeter = new Greeter("hello");
    }

    function testGreet() public {
        string memory greeting = greeter.greet();
        assertEq(greeting, "hello");
    }

    function testSetGreeting(string memory newGreeting) public {
        greeter.setGreeting(newGreeting);
        string memory greeting = greeter.greet();
        assertEq(greeting, newGreeting);
    }
}
