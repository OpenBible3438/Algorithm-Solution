//
//  Test.swift
//  Swift_Programmers
//
//  Created by 편성경 on 5/3/24.
//

// MARK: - 머쓱이보다 키 큰 사람 -
import Foundation

func solution_머쓱이보다키큰사람(_ array:[Int], _ height:Int) -> Int {
    return array.filter{ $0 > height }.count
}
