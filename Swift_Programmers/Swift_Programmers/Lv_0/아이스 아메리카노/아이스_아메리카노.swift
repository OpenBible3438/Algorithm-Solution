//
//  아이스_아메리카노.swift
//  Swift_Programmers
//
//  Created by 편성경 on 2023/05/31.
//

import Foundation

func solution_아이스아메리카노(_ money:Int) -> [Int] {
    
    var resultArray = [Int]()
    
    if money < 5500 {
        return [0, money]
    } else {
        resultArray.append(money / 5500)
        resultArray.append(money % 5500)
    }
    
    return resultArray
}
