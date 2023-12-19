//
//  main.swift
//  CodingTest
//
//  Created by 편성경 on 2023/12/18.
//

/*
 여러 값이 공백으로 들어오는 경우
 readLine()!.split(separator: " ").map{ Int(String($0)) }
 */

import Foundation

struct Metting {
    var start: Int
    var end: Int
}

let mettingCnt = Int(readLine()!)!
var mettings: [Metting] = Array(repeating: Metting(start: 0, end: 0), count: mettingCnt)

for cnt in 0 ..< mettingCnt {
    let times = readLine()!.split(separator: " ").map{ Int(String($0))! }
    mettings[cnt].start = times[0]
    mettings[cnt].end = times[1]
}

let sortedMettings = mettings.sorted{ $0.end == $1.end ? $0.start < $1.start : $0.end < $1.end }

var resultCnt = 0
var currentTime = 0

for metting in sortedMettings {
    if metting.start >= currentTime {
        resultCnt += 1
        currentTime = metting.end
    }
}

print(resultCnt)

