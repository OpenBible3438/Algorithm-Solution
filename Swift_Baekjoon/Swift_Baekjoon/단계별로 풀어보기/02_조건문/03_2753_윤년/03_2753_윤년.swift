//
//  03_2753_윤년.swift
//  Swift_Baekjoon
//
//  Created by 편성경 on 2023/01/03.
//

import Foundation

func q_2753() {
    
    let year = Int(readLine()!)!
    
    if (year % 4 == 0) && (year % 100 != 0) {
        print("1")
    } else if year % 400 == 0 {
        print("1")
    } else {
        print("0")
    }
    
}
