//
//  음양더하기.swift
//  Algorithm
//
//  Created by 김라영 on 2023/04/20.
//

import Foundation

func mySolution(_ absolutes:[Int], _ signs:[Bool]) -> Int{
    var signArr: [Int] = []

        for i in 0..<absolutes.count {
            if signs[i] == false{
                signArr.append(-(absolutes[i]))
            } else {
                signArr.append(absolutes[i])
            }
        }

        return signArr.reduce(0, +)
}

//for문 대신 map을 이용한 풀이
func anotherSolution(_ absolutes:[Int], _ signs:[Bool]) -> Int {
    return (0..<absolutes.count).map { signs[$0] ? absolutes[$0] : -absolutes[$0] }.reduce(0, +) //map을 통해서 0 ~ 10까지 돌리기
}
