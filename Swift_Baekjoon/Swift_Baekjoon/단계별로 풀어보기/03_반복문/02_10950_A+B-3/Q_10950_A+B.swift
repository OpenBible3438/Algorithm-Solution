//
//  Q_10950_A+B.swift
//  Swift_Baekjoon
//
//  Created by 편성경 on 2023/01/03.
//

import Foundation

func q_10950() {
    let T = Int(readLine()!)!
    
    for _ in 1...T {
        let caseArry = readLine()!.split(separator: " ").map{ Int(String($0))! }
        print("\(caseArry[0] + caseArry[1])")
    }
}
