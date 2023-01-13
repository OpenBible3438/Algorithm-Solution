//
//  Q_4673_셀프넘버.swift
//  Swift_Baekjoon
//
//  Created by 편성경 on 2023/01/13.
//

import Foundation

func q_4673() {
    
    func d(n: Int) -> Int {
        var tempN: Int = n
        var sum = tempN
        
        while tempN != 0 {
            sum += tempN % 10
            tempN = tempN / 10
        }
        return sum
    }
    
    var selfNumArry = Array(repeating: true, count: 10001)
    for i in 1...10000 {
        let number = d(n: i)
        if number <= 10000 {
            selfNumArry[number] = false
        }
    }
    
    for i in 1...10000 {
        if selfNumArry[i] { print(i) }
    }
    
}
