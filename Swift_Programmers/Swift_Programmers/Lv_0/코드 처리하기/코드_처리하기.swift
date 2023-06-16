//
//  코드_처리하기.swift
//  Swift_Programmers
//
//  Created by 편성경 on 2023/06/16.
//

import Foundation

func solution_코드_처리하기(_ code:String) -> String {
    
    var idx = 0
    var mode = 0
    var ret = ""
    
    for char in code {
        if mode == 0 {
            if char == "1" {
                mode = 1
            } else {
                if idx % 2 == 0 {
                    ret.append(char)
                }
            }
        } else {
            if char == "1" {
                mode = 0
            } else {
                if idx % 2 != 0 {
                    ret.append(char)
                }
            }
        }
        idx += 1
    }
    
    return ret.isEmpty ? "EMPTY" : ret
}

func solution_코드_처리하기2(_ code:String) -> String {
    
    var idx = 0
    var mode = 0
    var ret = ""
    
    for char in code {
        if mode == 0 {
            if char == "1" {
                mode = 1
            } else {
                if idx % 2 == 0 {
                    ret += String(char)
                }
            }
        } else {
            if char == "1" {
                mode = 0
            } else {
                if idx % 2 != 0 {
                    ret += String(char)
                }
            }
        }
        idx += 1
    }
    
    return ret.isEmpty ? "EMPTY" : ret
}
