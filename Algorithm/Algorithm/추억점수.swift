//
//  main.swift
//  Algorithm
//
//  Created by 김라영 on 2023/04/02.
//

import Foundation


func memeroSolution(_ name: [String], _ yearning: [Int], _ photo: [[String]]) -> [Int] {
    var result: [Int] = []
    var dictionary: [String: Int] = [:]
    
    for i in 0..<yearning.count {
        dictionary[name[i]] = yearning[i]
    }
//    print("dictionary",dictionary)
//    print("photoCount", photo.count)
    for i in 0..<photo.count {
        var temp = 0
        for name in photo[i] {
            if dictionary[name] != nil {
                temp += dictionary[name] ?? 0
//                print("temp", temp)
            }
        }
        result.append(temp)
    }
    return result
}

//print(memeroSolution(["may", "kein", "kain", "radi"], [5, 10, 1, 3], [["may", "kein", "kain", "radi"],["may", "kein", "brin", "deny"], ["kon", "kain", "may", "coni"]]))
//print(memeroSolution(["kali", "mari", "don"], [11, 1, 55], [["kali", "mari", "don"], ["pony", "tom", "teddy"], ["con", "mona", "don"]]))

