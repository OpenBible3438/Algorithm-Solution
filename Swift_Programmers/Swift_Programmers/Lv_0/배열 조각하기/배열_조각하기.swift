//
//  배열_조각하기.swift
//  Swift_Programmers
//
//  Created by 편성경 on 2023/06/22.
//

import Foundation

func solution_배열_조각하기(_ arr:[Int], _ query:[Int]) -> [Int] {
    
    var result = arr
    /*
    for i in 0 ..< query.count {
        if i % 2 == 0 {
            // 짝수 인덱스 -> 인덱스 기준으로 뒷부분 버리고 앞부분 얻기
            let index = query[i]
            result = Array(result.prefix(upTo: index + 1))
        } else {
            // 홀수 인덱스 -> 인덱스 기준으로 앞부분 버리고 뒷부분 얻기
            let index = query[i]
            result = Array(result.suffix(from: index))
        }
    }
    */
    
    for i in 0 ..< query.count {
        let index = query[i]
        result = i % 2 == 0 ? Array(result.prefix(upTo: index + 1)) : Array(result.suffix(from: index))
    }
    
    return result
}
