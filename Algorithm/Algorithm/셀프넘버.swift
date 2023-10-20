//
//  main.swift
//  Algorithm
//
//  Created by 김라영 on 2023/04/02.
//

import Foundation


func selfNumber() {
    var result: Set<Int> = []
    for i in 1...10000 {
        var temp = 0
        temp = d(i)
        result.insert(temp)
    }
    
    for i in 1...10000 {
        if !result.contains(i) {
            print(i)
        }
    }
}

func d(_ n: Int) -> Int {
    var temp = n
    var result: Int = n
    while temp > 0 {
        result += temp % 10
        temp /= 10
    }
    
    return result
}

//selfNumber()
