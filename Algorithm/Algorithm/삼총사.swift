//
//  main.swift
//  Algorithm
//
//  Created by 김라영 on 2023/04/18.
//

import Foundation
//프로그래머스 - 삼총사

//내가 푼 풀이
/*
 삼중 for문을 이용해서 푼 풀이 방법
 */
func threesolution(_ number: [Int]) -> Int {
    var result = 0
    for i in 0..<number.count{
        for j in (i + 1)..<number.count {
            for z in (j + 1)..<number.count {
                if number[i] + number[j] + number[z] == 0 {
                    result += 1
                }
            }
        }
    }
    
    return result
}

//다른 사람 풀이
//dfs로 풀이
//전체를 다 탐색해야 하므로

func threesolution2(_ number: [Int]) -> Int {
    var answer = 0
        
        func depthFirstSearch(_ index: Int, _ sum: Int, _ count: Int) {
            print("index: \(index), sum: \(sum), count: \(count)")
            if count == 3 {
                if sum == 0 {
                    answer += 1
                }
                return
            }
            
            for nextIndex in (index+1)..<number.count {
                print("nextIndex: \(nextIndex)")
                depthFirstSearch(nextIndex, sum + number[nextIndex], count + 1)
            }
        }
        
        for firstIndex in 0..<number.count {
            depthFirstSearch(firstIndex, number[firstIndex], 1)
        }
        return answer
}

//threesolution2([-2,3,0,2,-5])
//https://velog.io/@j_aion/%ED%94%84%EB%A1%9C%EA%B7%B8%EB%9E%98%EB%A8%B8%EC%8A%A4-LV1-%EC%82%BC%EC%B4%9D%EC%82%AC
