//
//  배열_만들기_2.swift
//  Swift_Programmers
//
//  Created by 편성경 on 2023/06/15.
//

import Foundation

func solution_배열_만들기_2(_ l:Int, _ r:Int) -> [Int] {
    
    var isValid = true
    var num = l
    var result = [Int]()
    
    while num <= r {
        for i in String(num) {
            if (i == "0" || i == "5") {
                continue
            } else {
                isValid = false
                break
            }
        }
        
        if isValid {
            result.append(num)
        }
        
        isValid = true
        if num % 5 == 0 {
            num += 5
        } else {
            num += 1
        }
    }
    
    return result.isEmpty ? [-1] : result
}
