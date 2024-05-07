//
//  120816.swift
//  Swift_Programmers
//
//  Created by 편성경 on 5/7/24.
//

import Foundation

func solution_120816(_ slice:Int, _ n:Int) -> Int {
    var newSlice = slice
    while newSlice < n {
        newSlice += slice
    }
    return newSlice / slice
}
