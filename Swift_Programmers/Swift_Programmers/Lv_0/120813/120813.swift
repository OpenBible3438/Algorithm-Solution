//
//  120813.swift
//  Swift_Programmers
//
//  Created by 편성경 on 5/3/24.
//

// MARK: - 짝수는 싫어요 -
import Foundation

func solution120813(_ n:Int) -> [Int] {
    return Array(1...n).filter{ $0 % 2 != 0 }
}
