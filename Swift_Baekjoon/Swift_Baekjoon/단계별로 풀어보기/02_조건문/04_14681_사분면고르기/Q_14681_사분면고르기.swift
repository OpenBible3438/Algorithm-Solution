//
//  Q_14681_사분면고르기.swift
//  Swift_Baekjoon
//
//  Created by 편성경 on 2023/01/10.
//

import Foundation

func q_14681() {
    let x = Int(readLine()!)!
    let y = Int(readLine()!)!

    if x > 0 && y > 0 {
        print("1")
    } else if x < 0 && y > 0 {
        print("2")
    } else if x < 0 && y < 0 {
        print("3")
    } else {
        print("4")
    }
}
