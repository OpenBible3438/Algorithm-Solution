//
//  Q_11022_A+B-8.swift
//  Swift_Baekjoon
//
//  Created by 편성경 on 2023/01/11.
//

import Foundation

func q_11022() {
    let T = Int(readLine()!)!
    for i in 1...T {
        let arrayAB = readLine()!.split(separator: " ").map{ Int(String($0))! }
        print("Case #\(i): \(arrayAB[0]) + \(arrayAB[1]) = \(arrayAB[0] + arrayAB[1])")
    }
}
