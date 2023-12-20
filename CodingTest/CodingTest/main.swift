//
//  main.swift
//  CodingTest
//
//  Created by 편성경 on 2023/12/18.
//

/*
 여러 값이 공백으로 들어오는 경우
 readLine()!.split(separator: " ").map{ Int(String($0)) }
 */

import Foundation

let cntN = Int(readLine()!)!
let numArray = readLine()!.split(separator: " ").map{ Int(String($0))! }

let sortedArray = numArray.sorted()

var totalLength = 0

var tempNum = sortedArray.first!
for num in sortedArray {
    totalLength += abs(tempNum - num)
    tempNum = num
}
totalLength += abs(sortedArray.last! - sortedArray.first!)

print(totalLength)
