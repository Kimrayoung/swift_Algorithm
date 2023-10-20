//
//  main.swift
//  Algorithm
//
//  Created by 김라영 on 2023/04/02.
//

import Foundation

//func solution(_ s: String) -> Int {
//    let arr =  Array(s)
//    var index = 1
//    var result: Int = 0
//    var stand: Character = arr[0]
//    var compare: Character = arr[0]
//
//    var standCnt: Int = 1
//    var compareCnt: Int = 0
//
//    while index != arr.count {
//        compare = arr[index]
//        if stand == compare { //기준문자 == 비교문자
//            standCnt += 1
//            index += 1
//            compare = arr[index]
//        } else { //기준문자 != 비교문자
//            compareCnt += 1
//            if standCnt == compareCnt { //기준문자개수 == 기준문자가 아닌 문자 개수
//                result += 1
//                index += 1
//                if index == arr.count {
//                    result += 1
//                    return result
//                }
//                stand = arr[index]
//                index += 1
//                standCnt = 1
//                compareCnt = 0
//            } else {
//                compareCnt += 1
//                index += 1
//            }
//        }
//    }
//
//    return result
//}

//print(solution("banana"))
