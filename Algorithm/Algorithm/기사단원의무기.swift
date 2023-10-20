//
//  main.swift
//  Algorithm
//
//  Created by 김라영 on 2023/04/17.
//

import Foundation
//기사단원의 무기 - 프로그래머스

import Foundation

//절반까지만 구해서 더하기
func powersolution1(_ number:Int, _ limit:Int, _ power:Int) -> Int {
    var result: Int = 0
    
    for i in 1...number {
        var cnt = 0
        let center = i / 2
        if i == 1 {
            cnt = 1
        } else if center == 1 {
            cnt = 2
        } else {
            for j in 1...center {
                if i % j == 0 {
                    cnt += 1
                }
            }
            cnt += 1
        }
        
        if cnt > limit {
            cnt = power
        }
        result += cnt
    }
    return result
}

//시간 초과


func powerSolution2(_ number: Int, _ limit: Int, _ power: Int) -> Int {
    var result = 0
    
    for i in 1...number {
        var powerAnswer = getPower(i)
        
        if powerAnswer > limit {
            result += power
        } else {
            result += powerAnswer
        }
    }
    
    return result
}

func getPower(_ num: Int) -> Int {
    var result = 0
    
    if num == 1 {
        result = 1
    } else if num == 2 || num == 3{
        result = 2
    } else {
        for i in 1...Int(sqrt(Double(num))) { //sqrt는 제곱근을 구하는 함수
            if num % i == 0 {
                if (i * i) == num { //만약에 둘이 곱했을 때 갔다면 제곱근이 정수이다 -> 제곱근이 정수일 때는 약수를 하나로 쳐야 한다
                    result += 1
                } else {
                    result += 2
                }
            }
        }
    }
    
    return result
}
//num이 16일 때 -> 1, 2, 4, 8, 16이 약수이고 4가 제곱근이다
//이렇게 제곱근이 정수일 때 4는 한번만 카운트를 해줘야 한다

//num이 24라면 -> 1,2,3,4,6,8,12,24가 약수이고 4.9가 제곱근이다
//이렇게 제곱근이 정수가 아닐 때는 4,6이 세트이므로 똑같이 2번으로 카운트된다

//print(powersolution1(5, 3, 2))
//print(powerSolution2(10, 3, 2))

