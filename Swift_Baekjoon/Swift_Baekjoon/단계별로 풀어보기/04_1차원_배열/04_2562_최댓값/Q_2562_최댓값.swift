//
//  Q_2562_최댓값.swift
//  Swift_Baekjoon
//
//  Created by 편성경 on 2023/01/12.
//

import Foundation

func q_2562() {
    var intArray: Array<Int> = []
    for _ in 1...9 {
        intArray += [Int(readLine()!)!]
    }

    let maxNum = intArray.max()!

    print(maxNum)
    for i in 0..<9 {
        if maxNum == intArray[i] {
            print(i+1)
        }
    }
}
