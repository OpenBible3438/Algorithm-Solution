//
//  옷가게_할인_받기.swift
//  Swift_Programmers
//
//  Created by 편성경 on 2023/05/31.
//

import Foundation

func solution_옷가게할인받기(_ price:Int) -> Int {
    
    if price >= 500000 {
        return Int(Double(price) * 0.80)
    } else if price >= 300000 {
        return Int(Double(price) * 0.90)
    } else if price >= 100000 {
        return Int(Double(price) * 0.95)
    } else {
        return price
    }
    
}
