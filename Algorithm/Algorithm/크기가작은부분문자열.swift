//
//  main.swift
//  Algorithm
//
//  Created by 김라영 on 2023/04/02.
//

import Foundation

func smallSubString(_ t: String, _ p: String) -> Int {

    var tempSubString: [Int] = []
    var result = 0
    let pInt = Int(p)!
    
    let maxIndex = t.count - p.count
    for i in 0...maxIndex {
        let startIndex = t.index(t.startIndex, offsetBy: i)
        let endIndex = t.index(startIndex, offsetBy: p.count)
        let temp = t[startIndex ..< endIndex]
        
        tempSubString.append(Int(temp)!)
    }

    for num in tempSubString {
        if num <= pInt {
            result += 1
        }
    }
    return result
}

//print(smallSubString("3141592", "271"))
//print(smallSubString("500220839878", "7"))

//print(smallSubString("10203", "15"))
