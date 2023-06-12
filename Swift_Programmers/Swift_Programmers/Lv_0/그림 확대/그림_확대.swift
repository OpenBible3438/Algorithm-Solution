//
//  그림_확대.swift
//  Swift_Programmers
//
//  Created by 편성경 on 2023/06/05.
//

import Foundation

func solution_그림_확대(_ picture:[String], _ k:Int) -> [String] {
    let array = picture.map{ $0.map{ String(repeating: String($0), count: k) }.joined(separator: "") }

    var result: [String] = []
    for i in array {
        for _ in 1 ... k {
            result.append(i)
        }
    }
    
    return result
}
