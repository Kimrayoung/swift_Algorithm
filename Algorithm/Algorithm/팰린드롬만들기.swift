////
////  main.swift
////  Algorithm
////
////  Created by 김라영 on 2023/04/13.
////
//
//import Foundation
//var input = readLine()!
//var dic : [String:Int] = [:]
//var oddCnt: Int = 0
//var odd: String = ""
//var result: String = ""
//
//for i in input {
//    if dic[String(i)] == nil {
//        dic[String(i)] = 1
//    } else {
//        dic[String(i)]! += 1
//    }
//}
//
//var dicSort = dic.sorted { fir, sec in
//    return fir < sec
//}
//
//
//func parind() {
//    //아예 팰린드롬을 만들지 못하는 경우 -> 홀수 갯수의 알파벳이 두개 이상이면 못 만든다
//    var halfResult: String = ""
//    for (k, v) in dicSort {
//        if v % 2 != 0 {
//            oddCnt += 1
//            odd = k
//        }
//        if oddCnt >= 2{
//            result = "I'm Sorry Hansoo"
//            return
//        }
//    }
//    //팰린드롬을 만들 수 있는 경우
//    for (k, v) in dicSort {
//        if v > 1 {
//            halfResult += String(repeating: k, count: v / 2)
//        }
//    }
//    result = halfResult + halfResult.reversed()
//    if input.count % 2 != 0 {
//        let index = result.index(result.startIndex, offsetBy: result.count / 2)
//        result.insert(Character(odd), at: index)
//    }
//    
//}
//
//
//
//parind()
//
//print(result)
