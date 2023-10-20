//
//  main.swift
//  Algorithm
//
//  Created by 김라영 on 2023/04/10.
//

import Foundation

func slicesolution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    var result: [Int] = []
        for command in commands {
            let start = command[0] - 1
            let last = command[1] - 1
            let k = command[2] - 1
            var sliceArr = Array(array[start...last])
            sliceArr.sort()
//            print(type(of: sliceArr))
//            var tempArr = Array(sliceArr)
            result.append(sliceArr[k])
        }
        return result
}

//print(slicesolution([1,5,2,6,3,7,4], [[2, 5, 3], [4, 4, 1], [1, 7, 3]]))
//https://zeddios.tistory.com/600
