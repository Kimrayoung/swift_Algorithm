////
////  main.swift
////  Algorithm
////
////  Created by 김라영 on 2023/06/12.
////
//
//import Foundation
//
//let input = readLine()!
//var board: [String] = []
//var changeBoard: [String] = []
//let a = "AAAA"
//let b = "BB"
//
////.과 X구분하기
//var temp: String = ""
//for i in input {
//    if temp != "" && temp.last! != i {
//        board.append(temp)
//        temp = String(i)
//    } else {
//        temp += String(i)
//    }
//}
//
//if temp != "" {
//    board.append(temp)
//}
//
////폴리오미노로 덮기
//for i in board {
//    if i.first! == "." {
//        changeBoard.append(i)
//    } else {
//        let length = i.count
//        //4로 나눠떨어지는 경우 -> AAAA로만 이루어질 수 있음
//        if length % 4 == 0 {
//            let cnt = length / 4
//            let str = String(repeating: a, count: cnt)
//            changeBoard.append(str)
//        } else if length % 2 == 0 { //4로는 나눠떨어지지 않지만 2로는 나눠떨어지는 경우 -> BB 혹은 AAAA로 구성
//            let aCnt = length / 4 //AAAA가 올 수 있는 cnt를 세줌
//            let bCnt = (length - aCnt * 4) / 2 //AAAA가 올 수 있는 부분을 제외하고 나머지는 BB로 채워줘야 함
//            let str = String(repeating: a, count: aCnt) + String(repeating: b, count: bCnt)////AAAA가 항상 사전상 앞에 나오므로
//            changeBoard.append(str)
//        } else {
//            changeBoard = ["-1"]
//            break
//        }
//    }
//}
//
//print(changeBoard.first! == "-1" ? -1 : changeBoard.reduce("", +))

