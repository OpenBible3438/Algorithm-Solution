//
//  01_1330_두수비교하기.swift
//  Swift_Baekjoon
//
//  Created by 편성경 on 2023/01/03.
//

import Foundation

func q_1330() {
    let array = readLine()!.split(separator: " ").map { Int(String($0))! }
    
    let A = array[0]
    let B = array[1]
    
    if A > B {
        print(">")
    } else if A < B {
        print("<")
    } else {
        print("==")
    }
}
