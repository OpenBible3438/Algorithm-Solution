//
//  주사위_게임_3.swift
//  Swift_Programmers
//
//  Created by 편성경 on 2023/06/26.
//

import Foundation

func solution_주사위_게임_3(_ a:Int, _ b:Int, _ c:Int, _ d:Int) -> Int {
    
    var countArray = Array(repeating: 0, count: 6)
    countArray[a-1] += 1
    countArray[b-1] += 1
    countArray[c-1] += 1
    countArray[d-1] += 1
    
    var result = 0
    
    if countArray.contains(4) {
        result = 1111 * (countArray.firstIndex(of: 4)! + 1)
    } else if countArray.contains(3) {
        let p = Double(countArray.firstIndex(of: 3)! + 1)
        let q = Double(countArray.firstIndex(of: 1)! + 1)
        result = Int(pow(10 * p + q, 2))
    } else if countArray.filter({$0 == 2}).count == 2 {
        let p = countArray.firstIndex(of: 2)! + 1
        let q = countArray.lastIndex(of: 2)! + 1
        result = (p + q) * abs(p - q)
    } else if countArray.filter({$0 == 2}).count == 1 && countArray.filter({$0 == 1}).count == 2 {
        let q = countArray.firstIndex(of: 1)! + 1
        let r = countArray.lastIndex(of: 1)! + 1
        result = q * r
    } else {
        result = countArray.firstIndex(of: 1)! + 1
    }
    
    return result
}
