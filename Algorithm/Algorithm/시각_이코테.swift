////
////  main.swift
////  Algorithm
////
////  Created by 김라영 on 2023/06/12.
////
//
//import Foundation
////시각 - 이코테
//
//let n = Int(readLine()!)!
//var result = 0
//
////시각에 3이 포함되는지 확인
//// h  % 10 == 3 -> 시간의 끝자리가 3인경우(03, 13, 23)
//// h / 10 == 3 -> 은 안해도 됨(30이상인 시간은 나오지 않음)
//// m / 10 == 3 -> 30분인 경우
//func check(_ h: Int, _ m : Int, _ s:Int) -> Bool {
//    if (h % 10 == 3 || m / 10 == 3 || m & 10 == 3 || s / 10 == 3 || s % 10 == 3) {
//        return true
//    } else {
//        return false
//    }
//}
//
//for i in 0...n {
//    for j in 0..<60 {
//        for k in 0..<60 {
//            if check(i, j, k) {
//                result += 1
//            }
//        }
//    }
//}
//
//print(result)
