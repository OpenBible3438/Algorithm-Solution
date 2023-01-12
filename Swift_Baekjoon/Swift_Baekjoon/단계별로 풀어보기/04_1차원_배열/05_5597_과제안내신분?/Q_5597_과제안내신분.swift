//
//  Q_5597_과제안내신분.swift
//  Swift_Baekjoon
//
//  Created by 편성경 on 2023/01/12.
//

import Foundation

func q_5597() {
    var allStuArry: Array<Int> = []
    for i in 1...30 {
        allStuArry += [i]
    }

    var subStuArry: Array<Int> = []
    for i in 0..<28 {
        subStuArry += [Int(readLine()!)!]
        for j in 0..<30 {
            if allStuArry[j] == subStuArry[i] {
                allStuArry[j] = 0
            }
        }
    }

    allStuArry.sort()
    print("\(allStuArry[28]) \(allStuArry[29])")
}
