//
//  연속된_수의_합.swift
//  Swift_Programmers
//
//  Created by 편성경 on 2023/06/20.
//

import Foundation

func solution_연속된_수의_합(_ num:Int, _ total:Int) -> [Int] {
        
    let mid = num % 2 == 0 ? Int(total / num) + 1 : Int(total / num)
    let first = mid - Int(num / 2)
    
    var result = [Int]()
    
    for i in 0 ..< num {
        result.append(i + first)
    }
    
    return result
}
