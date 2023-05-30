//
//  가까운_수.swift
//  Swift_Programmers
//
//  Created by 편성경 on 2023/05/30.
//

import Foundation

func solution_가까운수(_ array:[Int], _ n:Int) -> Int {
    
    let sortedArray = array.sorted() // 가까운 수가 여러 개일 경우 더 작은 수를 담기 위해 정렬
    
    var resultNum = sortedArray[0]
    var tempNum = abs(sortedArray[0] - n)
    
    for i in sortedArray {
        if abs(i - n) < tempNum {
            resultNum = i
            tempNum = abs(i - n)
        }
    }
    
    return resultNum
}
