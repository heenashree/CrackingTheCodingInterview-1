//
//  238. Product of Array Except Self.swift
//  LeetCode
//
//  Created by Honghao Zhang on 2016-10-26.
//  Copyright © 2016 Honghaoz. All rights reserved.
//

//Given an array of n integers where n > 1, nums, return an array output such that output[i] is equal to the product of all the elements of nums except nums[i].
//
//Solve it without division and in O(n).
//
//For example, given [1,2,3,4], return [24,12,8,6].
//
//Follow up:
//Could you solve it with constant space complexity? (Note: The output array does not count as extra space for the purpose of space complexity analysis.)

import Foundation

class Num238_ProductOfArrayExceptSelf: Solution {
	func productExceptSelf(_ nums: [Int]) -> [Int] {
		var a = 1
		var results: [Int] = []
		for i in 0..<nums.count {
			results.append(a)
			a *= nums[i]
		}
		
		a = 1
		for i in stride(from: nums.count - 1, to: -1, by: -1) {
			results[i] *= a
			a *= nums[i]
		}
		
		return results
	}
	
	func test() {
		
	}
}
