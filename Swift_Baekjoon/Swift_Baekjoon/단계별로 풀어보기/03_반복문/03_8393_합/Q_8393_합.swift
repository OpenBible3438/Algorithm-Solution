//
//  Q_8393_gkq.swift
//  Swift_Baekjoon
//
//  Created by 편성경 on 2023/01/11.
//

import Foundation

func q_8393() {
    let n = Int(readLine()!)!

    var result: Int = 0
    for i in 1...n {
        result = result + i
    }

    print(result)
}
