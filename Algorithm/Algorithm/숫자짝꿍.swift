//
//  main.swift
//  Algorithm
//
//  Created by 김라영 on 2023/05/26.
//

import Foundation
//프로그래머스

//다른 사람 풀이
func pairsolution(_ X:String, _ Y:String) -> String {
    var answer = ""
    var xNumberCount = Array(repeating: 0, count: 10)
    var yNumberCount = Array(repeating: 0, count: 10)
    
    for x in X {
        xNumberCount[Int(String(x))!] += 1
    }
    for y in Y {
        yNumberCount[Int(String(y))!] += 1
    }
    
    for number in stride(from: 9, through: 0, by: -1) {
        let minCount = min(xNumberCount[number], yNumberCount[number])
        if number == 0, 0 < minCount, answer.isEmpty {
            answer = "0"
            break
        }
        for _ in 0 ..< minCount {
            answer.append(String(number))
        }
    }
    return answer.isEmpty ? "-1" : answer
}

func pairsolution2(_ X:String, _ Y:String) -> String {
    let xArr = Array(X)
    let yArr = Array(Y)
    var onlyZero = true
    var contain: [String] = []
    
    for n in 0...9 {
        let nString = Character(String(n))
        var xNum = 0
        var yNum = 0
        
        for x in xArr {
            if x == nString {
                xNum += 1
            }
        }
        for y in yArr {
            if y == nString {
                yNum += 1
            }
        }
        
        if xNum > 0 && yNum > 0 {
            if n != 0 {
                onlyZero = false
            }
            let min = xNum > yNum ? yNum : xNum
            let s = String(repeating: "\(n)", count: min)
            contain.append(s)
        }
    }
    
    if contain.isEmpty {
        return "-1"
    }
    
    if onlyZero {
        return "0"
    }
    
    let containString = contain.reversed()

    return containString.joined(separator: "")
}

func pairsolution3(_ X:String, _ Y:String) -> String {
    let xArr = Array(X)
    let yArr = Array(Y)
    var onlyZero = true
    var contain: [String] = []
    
    for n in stride(from: 9, through: 0, by: -1) {
        let nString = Character(String(n))
        var xNum = 0
        var yNum = 0
        
        for x in xArr {
            if x == nString {
                xNum += 1
            }
        }
        for y in yArr {
            if y == nString {
                yNum += 1
            }
        }
        
        if xNum > 0 && yNum > 0 {
            if n != 0 {
                onlyZero = false
            }
            let min = xNum > yNum ? yNum : xNum
            let s = String(repeating: "\(n)", count: min)
            contain.append(s)
        }
    }
    
    if contain.isEmpty {
        return "-1"
    }
    
    if onlyZero {
        return "0"
    }

    return contain.joined(separator: "")
}
