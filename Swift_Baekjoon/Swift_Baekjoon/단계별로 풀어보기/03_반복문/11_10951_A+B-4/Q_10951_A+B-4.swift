//
//  Q_10951_A+B-4.swift
//  Swift_Baekjoon
//
//  Created by 편성경 on 2023/01/11.
//

import Foundation

func q_10951() {
    
    while let input = readLine() {
        let arrayAB = input.split(separator: " ").map{ Int(String($0))! }
        print("\(arrayAB[0] + arrayAB[1])")
    }
    
}
