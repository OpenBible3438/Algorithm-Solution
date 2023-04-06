//
//  기사단원의_무기.swift
//  Swift_Programmers
//
//  Created by 편성경 on 2023/02/05.
//

import Foundation

func solution(_ number:Int, _ limit:Int, _ power:Int) -> Int {
    
    // 1. 1~number 약수의 개수를 배열에 담기. 배열의 크기는 number
    // 2. 배열을 돌면서 limit 넘는 수는 power로 바꾸기
    // 3. 배열의 모든 수를 더해서 return
    
    // number크기의 배열
    var array = [Int](repeating: 0, count: number)
    
    // 약수의 개수 구해서 배열에 넣기
    for i in 1...number { // 기사
        var count = 0 // 약수의 개수
        for j in 1...i {
            if i % j == 0 { count += 1 }
        }
        array[i-1] = count
    }
    
    var ironKg = 0
    for i in 0 ..< number {
        if array[i] > limit { array[i] = power } // limit보다 크면 power 삽입
        ironKg += array[i] // 배열의 수 kg에 더하기
    }
    
    return ironKg
}

// 시간 초과 해결
func solution2(_ number:Int, _ limit:Int, _ power:Int) -> Int {
    
    var array = [Int](repeating: 0, count: number)
    
    for i in 1...number {
        var count = 0
        for j in 1...Int(sqrt(Double(i))) {
            if i % j == 0 {
                if i / j == j { count += 1 }
                else { count += 2 }
            }
        }
        array[i-1] = count
    }
    
    var ironKg = 0
    for i in 0 ..< number {
        if array[i] > limit { array[i] = power }
        ironKg += array[i]
    }
    
    return ironKg
}

/*
 static int countDivisors(int n)
 {
     int cnt = 0;
     for (int i = 1; i <= Math.sqrt(n); i++)
     {
         if (n % i == 0) {
             // If divisors are equal,
             // count only one
             if (n / i == i)
                 cnt++;

             else // Otherwise count both
                 cnt = cnt + 2;
         }
     }
     return cnt;
 }
 */
func 약수개수구하기(_ number: Int) {
    var count = 0
    for i in 1...Int(sqrt(Double(number))) {
        if number % i == 0 {
            if number / i == i { count += 1 }
            else { count += 2 }
        }
    }
    print(count)
}
