//
//  Q_1065_한수.swift
//  Swift_Baekjoon
//
//  Created by 편성경 on 2023/01/13.
//

import Foundation

func q_1065() {
    
    let n = Int(readLine()!)!
    
    func countHansu(num: Int) -> Int {
        var count = 0
        for i in 1...num {
            if i < 100 { count += 1 }
            else {
                var numArry: Array<Int> = []
                var temp = i
                while temp != 0 {
                    numArry += [temp % 10]
                    temp = temp / 10
                }
                if (numArry[2] - numArry[1]) == (numArry[1] - numArry[0]) { count += 1 }
            }
        }
        return count
    }

    print(countHansu(num: n))
        
}
