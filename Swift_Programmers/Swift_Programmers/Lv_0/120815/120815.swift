//
//  120815.swift
//  Swift_Programmers
//
//  Created by 편성경 on 5/7/24.
//

import Foundation

func solution_120815(_ n:Int) -> Int {
    var pieces = 6
    while pieces % n != 0 {
        pieces += 6
    }
    return pieces / 6
}
