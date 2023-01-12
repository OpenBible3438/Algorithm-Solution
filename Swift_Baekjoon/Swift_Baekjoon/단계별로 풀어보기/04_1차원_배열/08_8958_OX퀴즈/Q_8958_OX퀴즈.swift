//
//  Q_8958_OX퀴즈.swift
//  Swift_Baekjoon
//
//  Created by 편성경 on 2023/01/12.
//

import Foundation

func q_8958() {
    let T: Int = Int(readLine()!)!

    for _ in 0..<T {
        let oxQ = readLine()!
        var resultScore: Int = 0
        var oCount: Int = 0
        
        for char in oxQ {
            if char == "O" {
                oCount += 1
                resultScore += oCount
            } else {
                oCount = 0
            }
        }

        print(resultScore)
    }
}
