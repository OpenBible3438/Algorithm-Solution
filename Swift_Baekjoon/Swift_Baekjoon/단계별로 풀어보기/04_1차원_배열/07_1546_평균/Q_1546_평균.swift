//
//  Q_1546_평균.swift
//  Swift_Baekjoon
//
//  Created by 편성경 on 2023/01/12.
//

import Foundation

func q_1546() {
    let N = Int(readLine()!)!
    let scoreArry = readLine()!.split(separator: " ").map{ Double(String($0))! }

    let M: Double = scoreArry.max()!

    var total: Double = 0
    for i in 0..<N {
        total += scoreArry[i]/M*100
    }

    print(total / Double(N) )
}
