//
//  main.swift
//  Algorithm
//
//  Created by 김라영 on 2023/04/18.
//

import Foundation
//명예의 전당

//내가 한 풀이
//1. k크기의 배열을 만든다 -> 명예의 전당 배열
//2-1. i가 k크키보다 작은 경우 그냥 배열에 넣는다
//2-2. i가 k크기보다 큰 경우 명예의 전당 배열에서 원소를 하나 제거하고 넣어야 한다
//2-2-1. i번쨰 score가 최소점수보다 크다면 그 최소점수 자리에 i번째 score를 넣어준다
//3. 명예의 전당 배열에서 가장 작은 값의 원소를 찾고 가장 작은 원소와 그 원소의 위치를 변수로 저장한다
//4. result에 최소값을 넣어준다

import Foundation

func honorsolution(_ k:Int, _ score:[Int]) -> [Int] {
    var result: [Int] = []
    var honor: [Int] = Array(repeating: 2001, count: k)
    var minScore: Int = 2001 //2001보다 큰 점수는 없다
    var minIdx: Int = -1
    for i in 0..<score.count {
        if i < k {
            honor[i] = score[i]
            minScore = honor.min()!
            minIdx = Int(honor.index(of: minScore)!)
        } else {
            if minScore < score[i] {
                honor[minIdx] = score[i]
                minScore = honor.min()!
                minIdx = Int(honor.index(of: minScore)!)
            }
        }
        result.append(minScore)
    }
    return result
}

//sort를 이용한 풀이
func honorsolution2(_ k: Int, _ score: [Int]) -> [Int] {
    var result: [Int] = []
    var honor: [Int] = []
    var minScore: Int = 2001
    
    for i in 0..<score.count {
        if i < k {
            honor.append(score[i])
            honor.sort()
            minScore = honor.first!
        } else {
            if minScore < score[i] {
                honor[0] = score[i]
                honor.sort()
                minScore = honor.first!
            }
        }
        
        result.append(minScore)
    }
    
    return result
}

//print(honorsolution2(3, [10,100,20,150,1,100,200]))
