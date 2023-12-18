//
//  main.swift
//  CodingTest
//
//  Created by 편성경 on 2023/12/18.
//

import Foundation

let input: Int = Int(readLine()!)!
var output = 0

let money = [500, 100, 50, 10, 5, 1]
var change = 1000 - input

for coin in money {
    let coinCnt = change / coin
    output += coinCnt
    change -= coin * coinCnt
    
    if (change % coin) != 0 {
        continue
    } else {
        break
    }
}

print(output)
