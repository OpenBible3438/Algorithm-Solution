//
//  Q_2439_별찍기-2.swift
//  Swift_Baekjoon
//
//  Created by 편성경 on 2023/01/11.
//

import Foundation

func q_2439() {
    let N = Int(readLine()!)!

    for i in 1...N {
        for _ in 0..<N-i {
            print(" ", terminator: "")
        }

        for _ in 1...i {
            print("*", terminator: "")
        }
        print()
    }
}
