// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Enum{
    enum Status{Pending,Shipped,Accepted,Rejected,Canceled}//Pending=0,Shipped=1,Acceppted=2,Rejected=3,Canceled=4
    //枚举的默认缺省值为0,在这个例子就是Pending
    Status public status;

    function get() public view returns(Status){
        return status;
    }

    function set(Status _status) public{
        status = _status;
    }

    //通过以下方式来修改枚举体
    function Canel() public{
        status = Status.Canceled;
    }

    function reset() public{
        delete status;
    }
}