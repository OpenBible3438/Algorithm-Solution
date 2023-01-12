//
//  Q_10871_X보다작은수.swift
//  Swift_Baekjoon
//
//  Created by 편성경 on 2023/01/12.
//

import Foundation

func q_10871() {
    let arrayNX = readLine()!.split(separator: " ").map{ Int(String($0))! }
    let arrayA = readLine()!.split(separator: " ").map{ Int(String($0))! }

    for i in 0..<arrayNX[0] {
        if arrayA[i] < arrayNX[1] {
            print("\(arrayA[i])", terminator: " ")
        }
    }
}
