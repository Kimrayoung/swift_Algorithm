////
////  main.swift
////  Algorithm
////
////  Created by 김라영 on 2023/05/04.
////
//
//import Foundation
////신규아이디 추천
//
//func newIdsolution(_ new_id:String) -> String {
//    let new_idArr = Array(new_id)
//    var result = ""
//    let impossible = Array("~!@#$%^&*()=+[{]}:?,<>/")
//
//    for (n, c) in new_idArr.enumerated() {
//        if c.isUppercase {
//            result += String(c.lowercased())
//        } else if impossible.contains(c) {
//            continue
//        } else if c == "." {
//            if n != 0 && new_idArr[(n - 1)] != "." {
//                result += String(c)
//            }
//        } else {
//            result += String(c)
//        }
//    }
//
//    print("result: \(result.first!)")
//    while result.count >= 1 && result.first! == "." {
//        result = String(result.dropFirst())
//    }
//
//    while result.count >= 1 && result.last! == "." {
//        result = String(result.dropLast())
//    }
//
//
//    if result.count == 0 {
//        result += "a"
//    }
//
//    if result.count >= 16 {
//        var lastIndex = result.index(result.startIndex, offsetBy: 14)
//        if result[lastIndex] == "." {
//            lastIndex = result.index(result.startIndex, offsetBy: 13)
//        }
//        let range = ...lastIndex
//        result = String(result[range])
//    }
//
//    if result.count <= 2 {
//        let lastChar = String(result.last!)
//
//        while result.count != 3 {
//            result += lastChar
//        }
//    }
//
//
//    return result
//}
//
//print("result: ",newIdsolution("=.="))
