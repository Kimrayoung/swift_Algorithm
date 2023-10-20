//
//  main.swift
//  Algorithm
//
//  Created by 김라영 on 2023/04/03.
//

import Foundation

func findNumber(_ s: String) -> [Int]{
    let number : String = "0123456789"
    var result : [Int] = []
    var temp : [String] = []
    
    for char in s{
        if number.contains(char) {
            if !temp.isEmpty && temp[temp.count - 1] == "0" {
                temp[temp.count - 1] = String(char)
            } else {
                temp.append(String(char))
//                print("not empty", temp)
            }
        } else {
            if !temp.isEmpty {
//                print(temp)
                result.append(Int(temp.joined())!)
                temp = []
            }
//            print("empty", temp)
        }
    }
    
    if !temp.isEmpty {
//        print("temp", temp)
        result.append(Int(temp.joined())!)
    }
//    print("result",result)
    return result
}

func forLoop() {
    var result : [Int] = []
    result.append(contentsOf: findNumber("01bond"))
    result.append(contentsOf: findNumber("02james007"))
    result.append(contentsOf: findNumber("03bond"))
    result.append(contentsOf: findNumber("04austinpowers000"))
    result.sort()
    print("forLoop", result)
}

//forLoop()




