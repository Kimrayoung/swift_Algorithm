////
////  main.swift
////  Algorithm
////
////  Created by 김라영 on 2023/04/11.
////
//
//import Foundation
//
//let input = readLine()!.components(separatedBy: " ")
//let vocaCnt = Int(input[0])!
//let vocaLen = Int(input[1])!
//var vocaDic : [String : Int] = [:]
//
//for _ in 0..<vocaCnt {
//    let voca = readLine()!
//    if voca.count >= vocaLen {
//        vocaDic[voca] = vocaDic[voca] != nil ? vocaDic[voca]! + 1 : 1
//    }
//}
////print(vocaDic)
//vocaSolution()
////첫번째 인수가 두번째 인수보다 먼저 정렬되어야 하는 경우 TRUE
//func vocaSolution() {
//    let result = vocaDic.sorted { first, second in //sand3 apple2
//        if first.value > second.value {
//            return true
//        } else if first.value == second.value {
//            if first.key.count > second.key.count {
//                return true
//            } else if first.key.count == second.key.count {
//                if first.key < second.key {
//                    return true
//                }
//            }
//        }
//        return false
//    }
//    
//    for (key, _) in result {
//        print(key)
//    }
//}
//
////https://zeddios.tistory.com/1167
