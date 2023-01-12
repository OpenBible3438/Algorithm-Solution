//
//  Q_10818_최소,최대.swift
//  Swift_Baekjoon
//
//  Created by 편성경 on 2023/01/12.
//

import Foundation

func q_10818() {
    let _ = readLine()!
    let array = readLine()!.split(separator: " ").map{ Int(String($0))! }

    print("\(array.min()!) \(array.max()!)")
}
