//
//  다음에_올_숫자.swift
//  Swift_Programmers
//
//  Created by 편성경 on 2023/06/19.
//

import Foundation

func solution_다음에_올_숫자(_ common:[Int]) -> Int {
    
    if common[1] - common[0] == common[2] - common[1] {
        // 등차수열인 경우
        let diff = common[1] - common[0]
        return common.last! + diff
    } else {
        // 등비수열인 경우
        let diff = common[1] / common[0]
        return common.last! * diff
    }

}
