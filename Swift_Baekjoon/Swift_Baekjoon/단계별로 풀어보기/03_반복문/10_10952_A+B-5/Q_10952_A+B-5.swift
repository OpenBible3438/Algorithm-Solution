//
//  Q_10952_A+B-5.swift
//  Swift_Baekjoon
//
//  Created by 편성경 on 2023/01/11.
//

import Foundation

func q_10952() {
    
    while true {
        let arrayAB = readLine()!.split(separator: " ").map{ Int(String($0))! }
        if (arrayAB[0] == 0) && (arrayAB[1] == 0) { break }
        print("\(arrayAB[0]+arrayAB[1])")
    }
    
}
