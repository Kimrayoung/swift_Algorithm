//
//  main.swift
//  Algorithm
//
//  Created by 김라영 on 2023/04/20.
//

import Foundation

func radixFunction(_ n: Int) -> Int {
    let flipToThree = String(n,radix: 3) //n으로 3진법으로 변환
    print(flipToThree)
    let answer = Int(String(flipToThree.reversed()),radix:3)! //3진법을 역으로 뒤집고 3진법을 10진법으로 변경
    return answer
}

//radix사용해서 진법 변환하기
//https://hongssup.tistory.com/295

//print(radixFunction(45))
