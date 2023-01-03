//
//  Q_2793_구구단.swift
//  Swift_Baekjoon
//
//  Created by 편성경 on 2023/01/03.
//

import Foundation

func q_2793() {
    let danNum = Int(readLine()!)!
    
    for i in 1...9 {
        print("\(danNum) * \(i) = \(danNum * i)")
    }
}
