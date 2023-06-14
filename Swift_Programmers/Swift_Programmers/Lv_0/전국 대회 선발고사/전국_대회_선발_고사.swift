//
//  전국_대회_선발_고사.swift
//  Swift_Programmers
//
//  Created by 편성경 on 2023/06/13.
//

import Foundation

func solution_전국_대회_선발_고사(_ rank:[Int], _ attendance:[Bool]) -> Int {
    
    var attendArray = Array<Int>(repeating: rank.count + 1, count: rank.count)
    
    for i in 0 ..< rank.count {
        if attendance[i] == true {
            attendArray[i] = rank[i]
        }
    }
    
    let numArray = [10000, 100, 1]
    var result = 0
    
    for i in 0 ..< 3 {
        if let minElement = attendArray.enumerated().min(by: { $0.element < $1.element }) {
            result += numArray[i] * minElement.offset
            attendArray[minElement.offset] = rank.count + 1
        }
    }
    
    return result
}
