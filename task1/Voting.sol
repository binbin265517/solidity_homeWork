// SPDX-License-Identifier: MIT
pragma solidity ^0.8;

//  创建一个名为Voting的合约，包含以下功能：
// 一个mapping来存储候选人的得票数
// 一个vote函数，允许用户投票给某个候选人
// 一个getVotes函数，返回某个候选人的得票数
// 一个resetVotes函数，重置所有候选人的得票数

contract Voting{
    mapping (address => uint256 acount) public votes;
    mapping (address => bool ) public exist;
    address[] public addressArr;


    function vote(address addr, uint256 acount ) public  {
        votes[addr] += acount;
        // if (!exiszits[addr]) {
        //     addressArr.push(addr);
        //     exist[addr] = true;
        // }
        // return "success info";
    }
    function getVotes(address addr) public view returns(uint256) {
        return votes[addr];
    }

    // function resetVotes(address addr) public returns (uint256) {
    //     for(uint8 i; i < votes.length; i ++) {
    //         votes[i] = 0;
    //     }
    // }
}