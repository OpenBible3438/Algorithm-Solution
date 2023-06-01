//
//  로그인_성공?.swift
//  Swift_Programmers
//
//  Created by 편성경 on 2023/06/01.
//

import Foundation

// 모두 일치 - login
// 아이디 일치하지 않으면 - fail
// 아이디 일치 비번 틀리면 - wrong pw

func solution_로그인_성공(_ id_pw:[String], _ db:[[String]]) -> String {

    var result = "fail"
    
    for data in db {
        if id_pw[0] == data[0] {
            result = "wrong pw"
            if id_pw[1] == data[1] {
                result = "login"
            }
        }
    }
    
    return result
}
