//
//  배열_만들기_6.swift
//  Swift_Programmers
//
//  Created by 편성경 on 2023/06/05.
//

import Foundation

/*
 i = 0
 while i < arr.count {
    if stk.isEmpty {
        stk.append(arr[i])
        i += 1
    } else {
        if stk.last == arr[i] {
            stk.remove(stk.last)
            i += 1
        } else {
            stk.append(arr[i])
            i += 1
        }
    }
 }
 return stk.isEmpty ? [-1] : stk
 */

func solution_배열_만들기_6(_ arr:[Int]) -> [Int] {
    var stk = [Int]()
    
    var i = 0
    while i < arr.count {
        if stk.isEmpty {
            stk.append(arr[i])
            i += 1
        } else {
            if stk.last! == arr[i] {
                stk.removeLast()
                i += 1
            } else {
                stk.append(arr[i])
                i += 1
            }
        }
    }
    
    return stk.isEmpty ? [-1] : stk
}
