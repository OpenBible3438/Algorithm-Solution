//
//  다항식_더하기.swift
//  Swift_Programmers
//
//  Created by 편성경 on 2023/06/14.
//

import Foundation

func solution_다항식_더하기(_ polynomial:String) -> String {
    
    let components = polynomial.components(separatedBy: " + ")
    
    var xNum = 0
    var num = 0
    
    var resultString = ""
    
    for i in components {
        if i.contains("x") {
            var removeX = "0"+i
            removeX.removeLast()
            let intX = Int(String(removeX))!
            if intX == 0 || intX == 1 {
                xNum += 1
            } else {
                xNum += intX
            }
        } else {
            num += Int(i)!
        }
    }
    
    if xNum > 0 {
        if xNum == 1 {
            resultString += "x"
        } else {
            resultString += "\(xNum)x"
        }
        
        if num > 0 {
            resultString += " + "
        }
    }
    
    if num > 0 {
        resultString += "\(num)"
    }
    
    return resultString
}
