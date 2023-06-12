//
//  특이한_정렬.swift
//  Swift_Programmers
//
//  Created by 편성경 on 2023/06/12.
//

import Foundation

func solution_특이한_정렬(_ numlist:[Int], _ n:Int) -> [Int] {
    let sortedList = numlist.sorted { num1, num2 in
        if abs(num1 - n) == abs(num2 - n) {
            return num1 > num2
        } else {
            return abs(num1 - n) < abs(num2 - n)
        }
    }
    return sortedList
}

