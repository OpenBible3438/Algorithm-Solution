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

// N M K
let rules = readLine()!.split(separator: " ").map{ Int(String($0))! }
var numbers = readLine()!.split(separator: " ").map{ Int(String($0))! }

let sortedNumbers = numbers.sorted(by: >)
let maxNum1 = sortedNumbers[0]
let maxNum2 = sortedNumbers[1]

var resultSum = 0

let maxRepeat = rules[2]
var cntRepeat = 0

for _ in 1 ... rules[1] {
    if cntRepeat == maxRepeat {
        resultSum += maxNum2
        cntRepeat = 0
        continue
    }
    resultSum += maxNum1
    cntRepeat += 1
}

print(resultSum)
