//
//  Main.swift
//  Algorithm
//
//  Created by 김라영 on 2023/04/02.
//

import Foundation

//let n = Int(readLine()!)!
//print(n)
//var answer = 0

//for _ in 0..<n {
//    var word = readLine()!
//    if continueSolution(word) {
//        answer += 1
//    }
//}

//print(answer)

func continueSolution(_ input: String) -> Bool {
//    var result: Bool = true
    let array = Array(input)
    var dictionary: [Character: Int] = [:]
    
    var currentIndex: Int = 0
    
    for char in array {
        if dictionary[char] == nil {
            dictionary[char] = currentIndex
        } else {
            guard let retainIndex = dictionary[char] else { return false }
            
            if currentIndex - retainIndex != 1 {
                return false
            }
            dictionary[char] = currentIndex
        }
        
        currentIndex += 1
    }
    
    return true
}

//print(continueSolution("zyzyz"))
