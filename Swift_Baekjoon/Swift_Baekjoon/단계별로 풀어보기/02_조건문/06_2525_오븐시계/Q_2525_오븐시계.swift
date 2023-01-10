//
//  Q_2525_오븐시계.swift
//  Swift_Baekjoon
//
//  Created by 편성경 on 2023/01/10.
//

import Foundation

func q_2525() {
    let inputArry = readLine()!.split(separator: " ").map{ Int(String($0))! }
    let C: Int = Int(readLine()!)!

    let A: Int = inputArry[0]
    let B: Int = inputArry[1]

    var resultH: Int = A
    var resultM: Int = C + B

    if resultM > 59 {
        resultH = resultH + Int(resultM / 60)
        resultM = resultM % 60

        if resultH > 23 {
            resultH = resultH - 24
        }
    }

    print("\(resultH) \(resultM)")
}
