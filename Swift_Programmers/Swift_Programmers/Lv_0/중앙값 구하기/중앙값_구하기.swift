//
//  중앙값_구하기.swift
//  Swift_Programmers
//
//  Created by 편성경 on 2023/06/01.
//

import Foundation

func solution_중앙값_구하기(_ array:[Int]) -> Int {
    
    let sortedArray = array.sorted()
    let center = Int(sortedArray.count / 2)
    
    return sortedArray[center]
}
