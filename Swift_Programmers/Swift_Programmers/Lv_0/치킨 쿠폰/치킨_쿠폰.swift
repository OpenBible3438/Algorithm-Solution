//
//  치킨_쿠폰.swift
//  Swift_Programmers
//
//  Created by 편성경 on 2023/06/01.
//

import Foundation

/*
 치킨 한 마리 당 쿠폰 1개 얻음
 쿠폰 열 장 모으면 한 마리 서비스 -> 쿠폰 1개 얻음
 return 서비스 치킨 수
 */

func solution_치킨_쿠폰(_ chicken:Int) -> Int {
    
    var coupon = chicken
    var serviceChicken = 0
    
    while coupon >= 10 {
        serviceChicken += coupon / 10
        coupon = (coupon % 10) + (coupon / 10)
    }
    
    return serviceChicken
}
