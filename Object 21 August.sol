// SPDx-License-Identifier: MIT
pragma solidity ^0.8.15;

contract Object {
    string str = "Hello Solidity";
    uint num = 10;

    function PrintHello() public view returns (string memory){
        return str;
    }
    function returnStateVariable() public view returns (uint){
        return num;
    }
    function returnLocalVariable() public view returns (uint){
        uint num1 = 20;
        return num1;
    }
}