//
//  분수의_덧셈.swift
//  Swift_Programmers
//
//  Created by 편성경 on 2023/06/19.
//

import Foundation

func solution_분수의_덧셈(_ numer1:Int, _ denom1:Int, _ numer2:Int, _ denom2:Int) -> [Int] {
    
    // 두 분수 더하기
    let number = (numer1 * denom2) + (numer2 * denom1)
    let denom = denom1 * denom2
    
    // 기약 분수 만들기 -> 두 수의 최대공약수로 약분하기
    return [number / gcd_분수의_덧셈(number, denom), denom / gcd_분수의_덧셈(number, denom)]
}

func gcd_분수의_덧셈(_ num1: Int, _ num2: Int) -> Int {
    return num1 % num2 == 0 ? num2 : gcd(num2, num1 % num2)
}
