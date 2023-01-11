//
//  Q_2438_별찍기-1.swift
//  Swift_Baekjoon
//
//  Created by 편성경 on 2023/01/11.
//

import Foundation

func q_2438() {
    let N = Int(readLine()!)!

    for i in 1...N {
        for _ in 1...i {
            print("*", terminator: "")
        }
        print()
    }
}
