//
//  main.swift
//  Algorithm
//
//  Created by 김라영 on 2023/04/30.
//

import Foundation
//비밀지도

func binarysolution(_ n:Int, _ arr1:[Int], _ arr2:[Int]) -> [String] {
    var answer: [String] = []
    
    for i in (0..<n) {
        var binary = String(arr1[i] | arr2[i], radix: 2)
        print(binary)
//        binary = String(repeating: "0", count: n - binary.count) + binary
//
//        answer.append(String(binary.map { $0 == "1" ? "#" : " " }))
    }
    
    return answer
}

//binarysolution(5, [9, 20, 28, 18, 11], [30, 1, 21, 17, 28])
