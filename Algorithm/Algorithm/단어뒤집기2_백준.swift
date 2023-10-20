//
//  main.swift
//  Algorithm
//
//  Created by 김라영 on 2023/05/31.
//

//단어뒤집기2 - 백준

//import Foundation
//
//let originalString = readLine()!
//var reverseString: String = ""
//var stack1: [String] = [] //<>에 들어가는 스택
//var stack2: [String] = [] //공백에 들어가는 스택
//
//func reverseFunction() {
//    for c in originalString {
//        let cs = String(c)
//        if c == "<" {
//            if !stack2.isEmpty {
//                let join = stack2.reversed().joined()
//                stack2 = []
//                reverseString += join
//            }
//            stack1.append(cs)
//        } else if c == ">" {
//            let join = stack1.joined()
//            stack1 = []
//            reverseString += join
//            reverseString += ">"
//        } else if c == " " {
//            if stack1.isEmpty && !stack2.isEmpty {
//                let join = stack2.reversed().joined()
//                stack2 = []
//                reverseString += join
//                reverseString += " "
//            } else {
//                stack1.append(cs)
//            }
//        } else {
//            if !stack1.isEmpty {
//                stack1.append(cs)
//            } else {
//                stack2.append(cs)
//            }
//
//        }
//    }
//
//    if !stack2.isEmpty {
//        let join = stack2.reversed().joined()
//        reverseString += join
//    }
//
//    print(reverseString)
//}
//
//reverseFunction()
