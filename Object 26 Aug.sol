// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.15;

contract Object {
    function digitSum(uint n) public pure returns (uint) {
        uint sum = 0;
        while (n != 0) {
            sum = sum + n % 10;
            n = n / 10;
        }
        return sum;
    }
    function nthterm(uint n, uint a, uint b, uint c) public pure returns (uint[10] memory){
        uint[10] memory arr;
        arr[0] = a;
        arr[1] = b;
        arr[2] = c;
        
        for(uint i = 3; i < n; i++){
                arr[i] = arr[i - 1] + arr[i - 2] + arr[i - 3];
        }
        return arr;
    }
}
