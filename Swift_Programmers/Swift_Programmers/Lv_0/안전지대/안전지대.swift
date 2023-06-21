//
//  안전지대.swift
//  Swift_Programmers
//
//  Created by 편성경 on 2023/06/21.
//

import Foundation

func solution_안전지대(_ board:[[Int]]) -> Int {
    // 배열의 크기 늘리기
    var newBoard = board
    for index in 0 ..< newBoard.count {
        newBoard[index].insert(2, at: 0)
        newBoard[index].append(2)
    }
    newBoard.insert(Array(repeating: 2, count: newBoard.count + 2), at: 0)
    newBoard.append(Array(repeating: 2, count: newBoard.count + 2))
    
    // 지뢰 탐색
    for xIndex in 0 ..< newBoard.count {
        for yIndex in 0 ..< newBoard.count {
            if newBoard[xIndex][yIndex] == 1 {
                // 위험지역 체크
                for xRange in xIndex-1 ... xIndex+1 {
                    for yRange in yIndex-1 ... yIndex+1 {
                        if newBoard[xRange][yRange] != 1 { newBoard[xRange][yRange] = 2 }
                    }
                }
            }
        }
    }
    
    // 0 count
    return newBoard.flatMap{ $0.filter{ $0 == 0 } }.count
}
