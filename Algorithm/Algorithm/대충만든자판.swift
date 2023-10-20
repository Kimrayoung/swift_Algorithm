//
//  main.swift
//  Algorithm
//
//  Created by 김라영 on 2023/04/04.
//

import Foundation

func keymapsolution(_ keymap:[String], _ targets:[String]) -> [Int] {
    var result: [Int] = []
    var dictionary: [Character : Int] = [:]
    
    for keys in keymap {
        var keyArr = Array(keys)
        for i in 0..<keyArr.count {
            if dictionary[keyArr[i]] == nil {
                dictionary[keyArr[i]] = i + 1
            } else {
                if dictionary[keyArr[i]]! > i + 1 {
                    dictionary[keyArr[i]] = i + 1
                }
            }
        }
    }
    for target in targets {
        var cnt = 0
        var targetArr = Array(target)
        for i in 0..<targetArr.count {
            if dictionary[targetArr[i]] == nil {
                result.append(-1)
                break
            } else {
                cnt += dictionary[targetArr[i]]!
                if i == targetArr.count - 1 {
                    result.append(cnt)
                }
            }
        }
        
    }
    return result
}

//print(keymapsolution(["ABACD", "BCEFD"], ["ABCD", "AABB"]))
//print(keymapsolution(["AGZ", "BSSS"], ["ASA", "BGZ"]))
//keymapsolution(["AA"], ["B"])
