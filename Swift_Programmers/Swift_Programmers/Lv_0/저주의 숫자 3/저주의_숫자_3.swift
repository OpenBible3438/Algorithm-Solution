//
//  저주의_숫자_3.swift
//  Swift_Programmers
//
//  Created by 편성경 on 2023/06/05.
//

import Foundation

func solution_저주의_숫자_3(_ n:Int) -> Int {
    var result = 0
    
    for _ in 1 ... n {
        result += 1
        while (result % 3 == 0) || String(result).contains("3") {
            result += 1
        }
    }
    
    return result
}
