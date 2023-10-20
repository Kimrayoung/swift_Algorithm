//
//  main.swift
//  Algorithm
//
//  Created by 김라영 on 2023/04/14.
//

import Foundation
//위클리 챌린지 상호평가 - 프로그래머스

func evaluationSolution(_ scores: [[Int]]) -> String {
    var result: [String] = Array(repeating: "", count: scores.count)
    var scoreDic: [Int : [Int]] = [:]
    var same: Int = 0
    print(result)
    //점수판 만들기
    for i in 0..<scores.count {
        for j in 0..<scores[i].count {
            if scoreDic[j] == nil {
                scoreDic[j] = [scores[i][j]]
            } else {
                scoreDic[j]!.append(scores[i][j])
            }
        }
    }
    
    
    for score in scoreDic {
        var array = score.value
        let person = score.key
        let max = array.max()!
        let min = array.min()!
        same = 0
        
        print(array, person, max, min)
        if max == array[person] {
            print("크다")
            
            for i in array {
                if i == max {
                    same += 1
                }
            }

            print(same)
            if same == 1 {
                array.remove(at: person)
                scoreDic[person] = array
            }
        } else if min == array[person] {
            print("작다")
            for i in array {
                if i == min {
                    same += 1
                }
            }
            
            print(same)
            if same == 1 {
                array.remove(at: person)
                scoreDic[person] = array
            }
        }
        
        result[person] = scoreFuction(array)
        print(result)
    }

    
    return result.joined()
}

func scoreFuction(_ score: [Int]) -> String{
    let sum = score.reduce(0, +)
    let vag = sum / score.count
    if vag >= 90 {
        return "A"
    } else if 90 > vag && vag >= 80 {
        return "B"
    } else if 80 > vag && vag >= 70 {
        return "C"
    } else if 70 > vag && vag >= 50 {
        return "D"
    } else {
        return "F"
    }
}

//print(evaluationSolution([[100,90,98,88,65],[50,45,99,85,77],[47,88,95,80,67],[61,57,100,80,65],[24,90,94,75,65]]))
//print(evaluationSolution([[50,90],[50,87]]))
//print(evaluationSolution([[70,49,90],[68,50,38],[73,31,100]]))
