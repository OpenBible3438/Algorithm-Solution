//
//  등수_매기기.swift
//  Swift_Programmers
//
//  Created by 편성경 on 2023/06/01.
//

import Foundation

func solution_등수_매기기(_ score:[[Int]]) -> [Int] {
    
    var resultArray = [Int]()
    var rank = 1
    
    let averageArray = score.map { ($0[0] + $0[1]) } // 2 나누기 제외
    for i in averageArray {
        rank = 1
        for j in averageArray {
            if i < j {
                rank += 1
            }
        }
        resultArray.append(rank)
    }
        
    return resultArray
}
