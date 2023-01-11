//
//  Q_25304_영수증.swift
//  Swift_Baekjoon
//
//  Created by 편성경 on 2023/01/11.
//

import Foundation

func q_25304() {
    // 총 금액 X
    let X = Int(readLine()!)!

    // 물건 종류의 수 N
    let N = Int(readLine()!)!

    var total: Int = 0
    for _ in 1...N {
        let arrayAB = readLine()!.split(separator: " ").map{ Int(String($0))! }

        // 물건 가격 a, 물건 개수 b
        let a = arrayAB[0]
        let b = arrayAB[1]

        total = total + (a * b)
    }

    if X == total {
        print("Yes")
    } else {
        print("No")
    }
}
