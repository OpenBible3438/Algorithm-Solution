//
//  유한소수_판별하기.swift
//  Swift_Programmers
//
//  Created by 편성경 on 2023/06/02.
//

import Foundation

func solution_유한소수_판별하기(_ a:Int, _ b:Int) -> Int {
    
    let child = a / gcd(a, b)
    let parent = b / gcd(a, b)
    
    if parent == 1 || child == parent { return 1 } // 정수는 유한소수

    for num in 2 ... parent {
        // num이 약수인 경우
        if parent % num == 0 {
            // 2, 5, 짝수가 아닐 때
            if num % 2 != 0 && num != 5 {
                // 소수 판별
                if isPrime(num) {
                    return 2
                }
            }
        }
    }
    return 1
}

// 최대공약수
func gcd(_ num1: Int, _ num2: Int) -> Int {
    if num1 % num2 != 0 {
        return gcd(num2, num1 % num2)
    }
    return num2
}

// 소수 판별
func isPrime(_ num: Int) -> Bool {
    for i in 2 ..< num {
        if num % i == 0 {
            return false
        }
    }
    return true
}

