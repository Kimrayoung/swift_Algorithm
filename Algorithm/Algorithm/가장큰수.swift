//
//  main.swift
//  Algorithm
//
//  Created by 김라영 on 2023/04/10.
//

import Foundation

func bigsolution(_ numbers: [Int]) -> String {
    var numberString = numbers.map{String($0)}
    
    numberString.sort {
//        print("$0, $1",$0, $1)
//        print("$0 + $1, $1 + $0", $0 + $1, $1 + $0)
        return $0 + $1 > $1 + $0
    }
    var answer = numberString.joined()
    //맨 앞에 0이 나오는 경우 처리
    if let num = Int(answer) {
        return String(num)
    }
    return answer
}

//print(bigsolution([3, 30, 34, 5, 9]))
