// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.15;

contract Object {
    uint num;

    function set(uint _num) public {
        num = _num;
    }
    function get() public view returns (uint){
        return num;
    }
    function evaluate(int a, int b) public pure returns (int){
        return (a+b) - (a-b);
    }
    function find(int a) public pure returns (int){
        require(a>0);
        return a%3;
    }
    function average(int a,int b,int c) public pure returns (int){
        require(a>0 && b>0 && c>0);
        return (a+b+c)/3;
    }

}
