// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract EtherUnits{
    //1Eth = 10 ** 18 Wei, Wei 是以太坊上Gas的最小单位

    uint public  oneWei = 1 wei;
    bool public isOneWei = 1 wei == 1;

    uint public oneEther = 1 ether;
    bool public isOnewEther = 1 ether == 10 ** 18 wei; //1e18 == 10 ** 18
}