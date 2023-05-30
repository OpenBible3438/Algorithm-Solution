//
//  A로_B_만들기.swift
//  Swift_Programmers
//
//  Created by 편성경 on 2023/05/30.
//

import Foundation

func solution_A로_B_만들기(_ before:String, _ after:String) -> Int {
    return String(before.reversed()) == after ? 1 : 0
}

// 거꾸로만 하면 되는 줄

// 수정완료
func solution_A로_B_만들기2(_ before:String, _ after:String) -> Int {
    return String(before.sorted()) == String(after.sorted()) ? 1 : 0
}
