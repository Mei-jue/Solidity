// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import  "./025SimpleStorage.sol";

//继承 is这个关键字说明inherit这个合约是SimpleStoage的子合约

contract jicheng is SimpleSorage{

//在子合约里重写父合约的某个function 需要在子合约对应function后面里加上override修饰符
    function store(uint _favoriteNumber) public override{
        favoriteNumber = _favoriteNumber + 10;
    }
}