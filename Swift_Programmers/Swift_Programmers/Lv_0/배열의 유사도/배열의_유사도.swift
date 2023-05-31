//
//  배열의_유사도.swift
//  Swift_Programmers
//
//  Created by 편성경 on 2023/05/31.
//

import Foundation

func solution_배열의_유사도(_ s1:[String], _ s2:[String]) -> Int {
    
    var count = 0
    
    let _ = s1.map { s1Num in
        s2.map { s2Num in
            if s1Num == s2Num { count += 1 }
        }
    }
    
    return count
}
