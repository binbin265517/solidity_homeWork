// SPDX-License-Identifier: MIT
pragma solidity ^0.8;

//  创建一个名为Voting的合约，包含以下功能：
// 一个mapping来存储候选人的得票数
// 一个vote函数，允许用户投票给某个候选人
// 一个getVotes函数，返回某个候选人的得票数
// 一个resetVotes函数，重置所有候选人的得票数

contract Voting{
    mapping (address => uint256 acount) public votes;
    // 候选人是否存在
    mapping (address => bool ) public exist;
    // 候选人地址数组
    address[] public addressArr;


    function vote(address addr, uint256 acount ) public returns (string memory)  {
        
        if (!exist[addr]) {
            addressArr.push(addr);
            exist[addr] = true;
        }
        votes[addr] += acount;
        return "success info";
    }
    function getVotes(address addr) public view returns(uint256) {
        return votes[addr];
    }

    function resetVotes() public returns (string memory) {
        for(uint256 i; i < addressArr.length; i ++) {
           delete votes[addressArr[i]];
           exist[addressArr[i]] = false;
        }
        delete addressArr;
        return "sucessfully";
    }
}