//
//  Q_2480_주사위세개.swift
//  Swift_Baekjoon
//
//  Created by 편성경 on 2023/01/10.
//

import Foundation

func q_2480() {
    let inputArry = readLine()!.split(separator: " ").map{ Int(String($0))! }

    let time1: Int = Int(inputArry[0])
    let time2: Int = Int(inputArry[1])
    let time3: Int = Int(inputArry[2])

    var money: Int = 0

    if (time1 == time2) && (time1 == time3) {
        money =     10000 + (time1 * 1000)
    } else {
        if (time1 == time2) && (time1 != time3) {
            money = 1000 + (time1 * 100)
        } else if (time1 == time3) && (time1 != time2) {
            money = 1000 + (time1 * 100)
        } else if (time2 == time3) && (time1 != time2) {
            money = 1000 + (time2 * 100)
        } else {
            money = inputArry.max()! * 100
        }
    }

    print(money)
}
