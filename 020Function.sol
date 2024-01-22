// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

 contract Funtion{
    //使用pure时候是不需要读取区块链上的任何变量
    function returnMany() pure public returns(uint,bool,uint){
        return(11,true,22);
    }

    /*
    以下报错,读取num时需要读取区块链上的变量所有不能用pure需要用view

    错误写法:
    uint public num = 88;
    function returnMany1() pure public returns(uint,bool,uint){
        return(num,true,22);
    }

    正确写法:
    function returnMany1() view public returns(uint x,bool b,uint y){
        return(num,true,22);
    }
    */

    //当我们给返回的参数指定名称时,可以用参数“=”的方式来取代return
    uint public num = 88;
    function returnMany3() view public returns(uint x, bool b ,uint y){
        x = num;
        b = true;
        y = 22;
    }


    function destructuringAssignments() public pure returns(uint,bool,uint,uint,uint){
        (uint i,bool b,uint j) = returnMany(); //i = 11 ,b = true,j = 22
        (uint x ,uint y) = (1,2);

        return (i,b,j,x,y);
    }

    function arrinput(uint[] memory _arr) public{}
        //数组可以作为输入和返回参数,map不能作为输入参数
        uint[] public  arr;

    function getarr() public view returns(uint[] memory){
        return arr;
    }
 }