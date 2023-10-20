//
//  main.swift
//  Algorithm
//
//  Created by 김라영 on 2023/06/07.
//

//이것이 코딩테스트다 - 개미전사
//import Foundation
//
//let cargoNum = Int(readLine()!)!
//let cargoFoodString = readLine()!.components(separatedBy: " ")
//let cargoFood = cargoFoodString.map { x in
//    return Int(x)!
//}
//
//var result = Array(repeating: 0, count: cargoNum)
//
//for (n, c) in cargoFood.enumerated() {
//    if n == 0 {
//        result[n] = c
//    } else if n == 1 {
//        result[n] = cargoFood[n - 1] > cargoFood[n] ? cargoFood[n - 1] : cargoFood[n]
//    } else {
//        let first = cargoFood[n - 1]
//        let second = cargoFood[n - 2] + c
//        result[n] = first > second ? first : second
//    }
//}
//
//print(result.last!)
