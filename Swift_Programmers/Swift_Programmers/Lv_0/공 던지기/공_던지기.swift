//
//  공_던지기.swift
//  Swift_Programmers
//
//  Created by 편성경 on 2023/06/01.
//

import Foundation

func solution_공_던지기(_ numbers:[Int], _ k:Int) -> Int {
    
    var ball = 0

    for _ in 1...k-1 {
        ball += 2
        if ball >= numbers.count {
            ball -= numbers.count
        }
    }
    
    return numbers[ball]
}
