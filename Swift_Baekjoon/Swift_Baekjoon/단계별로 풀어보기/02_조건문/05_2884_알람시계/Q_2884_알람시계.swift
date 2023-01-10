//
//  Q_2884_알람시계.swift
//  Swift_Baekjoon
//
//  Created by 편성경 on 2023/01/10.
//

import Foundation

func q_2884() {
    let inputArry = readLine()!.split(separator: " ").map{ Int(String($0))! }

    var H: Int = inputArry[0]
    var M: Int = inputArry[1]

    if M < 45 {
        if H < 1 {
            H = 23
        } else {
            H = H - 1
        }
        M = 60 - 45 + M
    } else {
        M = M - 45
    }

    print("\(H) \(M)")
}
