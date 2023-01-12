//
//  Q_3052_나머지.swift
//  Swift_Baekjoon
//
//  Created by 편성경 on 2023/01/12.
//

import Foundation

func q_3052() {
    var modArry: Array<Int> = []
    for _ in 1...10 {
        let mod = Int(readLine()!)! % 42
        modArry += [mod]
    }

    var countArry = [Int](repeating: 0, count: 42)
    for i in 0..<10 {
        countArry[modArry[i]] = countArry[modArry[i]]+1
    }

    var result: Int = 0
    for i in countArry {
        if i > 0 {
            result += 1
        }
    }

    print(result)
}
