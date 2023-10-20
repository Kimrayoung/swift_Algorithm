////
////  main.swift
////  Algorithm
////
////  Created by 김라영 on 2023/06/12.
////
//
//import Foundation
////백준 - 인턴 or 대회
//let input = readLine()!.components(separatedBy: " ").map{ Int($0)! }
//let n = input[0]
//let m = input[1]
//let k = input[2]
//
//let cn = n / 2
//var x = 0 //대회에 나갈 수 있도록 만든 수
//
//if cn <= m {
//    x = cn
//} else {
//    x = m
//}
//
//if (n + m) - (x * 3) >= k {
//    print(x)
//} else {
//    let temp = k - ((n + m) - (x * 3))
////    print("temp", temp, temp/3, "x =\(x)")
//    if temp / 3 == 0 {
//        print(x - 1)
//    } else {
//        let tmp2 = temp / 3
//        if x - tmp2 <= 0 {
//            print(0)
//        } else {
//            if temp % 3 == 1 || temp % 3 == 2 {
//                print(x - tmp2 - 1 > 0 ? x - tmp2 - 1 : 0)
//            } else {
//                print(x - tmp2)
//            }
//        }
//    }
//}
//
//
//
