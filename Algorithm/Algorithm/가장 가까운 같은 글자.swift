//
//  main2.swift
//  Algorithm
//
//  Created by 김라영 on 2023/04/02.
//

import Foundation

func solution(_ s:String) -> [Int] {
    var result : [Int] = []
    var tempResult: [Int] = []
    let arr = Array(s)
    
    for i in 0..<arr.count {
        if i == 0 {
            result.append(-1)
        }
        else {
            for j in 0..<i {
                if arr[i] == arr[j] {
                    tempResult.append(i - j)
                }
            }
            if tempResult.count == 0 {
                result.append(-1)
            } else {
                result.append(tempResult[tempResult.count - 1])
            }
            tempResult = []
        }
    }
    return result
}

func solution2(_ s:String) -> [Int] {
    var array = s.map { $0 }
    var answer: [Int] = []
    var dictionary: [Character: Int] = [:]
    var currentIndex = 0

    for number in array {
        print(dictionary)
        if dictionary[number] == nil {
            answer.append(-1)
        } else {
            let index = currentIndex - dictionary[number]!
            answer.append(index)
        }
            dictionary[number] = currentIndex
            currentIndex += 1
    }

    return answer
}
