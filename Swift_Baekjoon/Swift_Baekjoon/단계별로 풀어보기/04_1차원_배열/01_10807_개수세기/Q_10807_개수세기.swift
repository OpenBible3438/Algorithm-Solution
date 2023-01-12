//
//  Q_10807_개수세기.swift
//  Swift_Baekjoon
//
//  Created by 편성경 on 2023/01/12.
//

import Foundation

func q_10807() {
    // 정수의 개수
    let N = Int(readLine()!)!

    // 정수 배열
    let inputArry = readLine()!.split(separator: " ").map{ Int(String($0))! }

    // 찾으려는 정수
    let v = Int(readLine()!)!

    var count: Int = 0
    for i in 0..<N {
        if v == inputArry[i] { count += 1 }
    }

    print(count)
}
