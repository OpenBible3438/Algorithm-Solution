//
//  Solution.swift
//  Swift_Programmers
//
//  Created by 편성경 on 2023/05/30.
//

import Foundation

func solution_k의_개수(_ i:Int, _ j:Int, _ k:Int) -> Int {
    
    var count = 0
    
    for num in i...j {
        let intToString = String(num)
        intToString.map {
            if String($0) == String(k) {
                count += 1
            }
        }
    }
    
    return count
}
