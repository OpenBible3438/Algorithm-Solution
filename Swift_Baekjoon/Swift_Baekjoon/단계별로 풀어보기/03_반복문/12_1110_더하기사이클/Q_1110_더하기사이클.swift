//
//  Q_1110_더하기사이클.swift
//  Swift_Baekjoon
//
//  Created by 편성경 on 2023/01/12.
//

import Foundation

func q_1110() {
    let N = Int(readLine()!)!
    var num = N
    var cycle: Int = 0

    while true {
        let newNum = (num/10) + (num%10)
        num = ((num%10)*10) + (newNum%10)
        cycle = cycle + 1

        if N == num { break }
    }

    print(cycle)
}
