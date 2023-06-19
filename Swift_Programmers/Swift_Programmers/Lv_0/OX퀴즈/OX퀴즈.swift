//
//  OX퀴즈.swift
//  Swift_Programmers
//
//  Created by 편성경 on 2023/06/19.
//

import Foundation

func solution_OX퀴즈(_ quiz:[String]) -> [String] {
    
    var result = [String]()
    
    for i in quiz {
        let components = i.components(separatedBy: " ")
        if components[1] == "+" {
            if Int(components[0])! + Int(components[2])! == Int(components[4])! {
                result.append("O")
            } else {
                result.append("X")
            }
        } else {
            if Int(components[0])! - Int(components[2])! == Int(components[4])! {
                result.append("O")
            } else {
                result.append("X")
            }
        }
    }
    
    return result
}
