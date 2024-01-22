// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Error1{
    //require关键字用于验证以下条件
    //输入
    //执行前的条件是否满足
    //其他函数返回值是否满足条件

    function testError(uint _i) public pure{
        require(_i > 10, "I'm your father,you must greater than 10");
    }

    function testRevert(uint _i) public pure{
        if(_i <= 10){
            revert("I'm your father,you must greater than 10");
        }
    }
    
    uint public num;
    function testAssert() public view{
        //Assert这个关键字只能用于测试内部错误和不变量
        //断言，如果断言失败，会抛出异常，终止执行
        assert (num == 0);
    }
}