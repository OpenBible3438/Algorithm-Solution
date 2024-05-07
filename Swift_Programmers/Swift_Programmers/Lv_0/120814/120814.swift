//
//  120814.swift
//  Swift_Programmers
//
//  Created by 편성경 on 5/7/24.
//

// MARK: - 피자 나눠 먹기 (1) -
import Foundation

func solution120814(_ n:Int) -> Int {
    return n % 7 == 0 ? n / 7 : n / 7 + 1
}
