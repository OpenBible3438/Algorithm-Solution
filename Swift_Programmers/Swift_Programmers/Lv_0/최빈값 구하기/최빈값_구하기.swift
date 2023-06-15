//
//  최빈값_구하기.swift
//  Swift_Programmers
//
//  Created by 편성경 on 2023/06/15.
//

import Foundation

func solution_최빈값_구하기(_ array:[Int]) -> Int {
    
    var countArray = Array<Int>(repeating: 0, count: 1000)
    
    for i in array {
        countArray[i] += 1
    }
    
    let maxValue = countArray.max()
    let maxArray = countArray.filter { $0 == maxValue }
    
    return maxArray.count > 1 ? -1 : countArray.firstIndex(of: maxValue!)!
}
