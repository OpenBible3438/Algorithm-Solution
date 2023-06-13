//
//  문자열_밀기.swift
//  Swift_Programmers
//
//  Created by 편성경 on 2023/06/13.
//

import Foundation

func solution_문자열_밀기(_ A:String, _ B:String) -> Int {
    
    var pushString = A
    var pushCount = 0
    
    while true {
        if pushCount == pushString.count { return -1 }
        
        if pushString == B {
            return pushCount
        }
        pushCount += 1
        
        pushString = String(pushString.suffix(1)) + String(pushString.prefix(pushString.count - 1))
    }
}
