// SPDX-License-Identifier: MIT
pragma solidity ^0.8;

contract MergeSoftArray {
    /**
      合并两个有序数组 (Merge Sorted Array)
         题目描述：将两个有序数组合并为一个有序数组。
    **/ 
    function mergeArray(uint[] memory arr1, uint[] memory arr2) public pure returns (uint[] memory) {
        uint length1 = arr1.length;
        uint length2 = arr2.length;
        uint[] memory result = new uint[](length1 + length2);

        uint index1 = 0;
        uint index2 = 0;
        uint indexResult = 0;

        while (index1 < length1 && index2 < length2) {
           if (arr1[index1] < arr2[index2]) {
                 result[indexResult] = arr1[index1];
                index1 ++;
           } else {
                result[indexResult] = arr2[index2];
                index2++;
           }
           indexResult ++;
        }
        while (index1 < length1) {
            result[indexResult] = arr1[index1];
            indexResult ++;
            index1 ++;
        }
        while (index2 < length2) {
            result[indexResult] = arr2[index2];
            indexResult ++;
            index2 ++;
        }
        return result;
    }
}