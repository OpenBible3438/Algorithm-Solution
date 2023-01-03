//
//  02_9498_시험성적.swift
//  Swift_Baekjoon
//
//  Created by 편성경 on 2023/01/03.
//

import Foundation

func q_9498() {
    let score = Int(readLine()!)!
    
    if 89 < score {
        print("A")
    } else if 79 < score {
        print("B")
    } else if 69 < score {
        print("C")
    } else if 59 < score {
        print("D")
    } else {
        print("F")
    }
}
