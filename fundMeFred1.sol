//允许任何用户向这个合约里捐款
//允许合约部署者吧用户捐款提走
//可以看到每个用户捐了多少
//设定一个最小金额,小于这个金额(50u),则捐款不成功

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";


contract FundMe{
    AggregatorV3Interface internal priceFeed;

    address public owner;

    


    //fund
    //函数后加了payable修饰符就是指可以往里面存款
    //payable修饰符只能修饰函数,不能修饰变量
    function Fund() public payable{
        require(msg.value > 50,"must greater than 50 wei");
        //1eth = 10**18 wei = 10**9 Gwei = 1e18 后面没加单位默认单位是Wei
    }

    function withdraw() public payable{
        require(msg.sender == owner,"not contract deployer!");
        
    }

     function CurrentEthPrice() public view returns (uint) {
        // prettier-ignore
        (
            /* uint80 roundID */,
            int price,
            /*uint startedAt*/,
            /*uint timeStamp*/,
            /*uint80 answeredInRound*/
        ) = priceFeed.latestRoundData();
        return uint(price);
    }
    constructor(){
        priceFeed = AggregatorV3Interface(0xD4a33860578De61DBAbDc8BFdb98FD742fA7028e);
        owner = msg.sender;
    }
   
}