//
//  main.swift
//  Algorithm
//
//  Created by 김라영 on 2023/04/12.
//

import Foundation

//func targetNumbersolution(_ numbers:[Int], _ target:Int) -> Int {
//    var result: Int = 0
//    var numberDic: [(Int, Int, Int)] = []
//    var visited: [Bool] = Array.init(repeating: false, count: numbers.count * 2)
//
//    //각 숫자 별로 몇번 확인 할 수 있는지 만들기
//    for i in 0..<numbers.count {
//        numberDic.append((i + 1, numbers[i], Int(pow(2.0, Float(i)))))
//        numberDic.append((i + 1, -numbers[i], Int(pow(2.0, Float(i)))))
//    }
//    print(numberDic, numberDic[0].1)
//
//
//
//    return result
//}

func targetNumbersolution(_ numbers: [Int], _ target: Int) -> Int {
    var result: Int = 0
    
    func dfs(index: Int, sum: Int, some: String) {
        print("some: \(some), index: \(index), sum: \(sum)")
        if index == numbers.count { //가장 마지막 인덱스까지 봤다면
            if sum == target { //sum을 확인한다
                result += 1
            }
            return
        }
        dfs(index: index + 1, sum: sum + numbers[index], some: "plus") //마지막 인덱스까지 보지 않았다면
        dfs(index: index + 1, sum: sum - numbers[index], some: "minus")
    }
    
    dfs(index: 0, sum: 0, some: "plus")
    return result
}

//targetNumbersolution([1,1,1,1,1], 3)
//targetNumbersolution([4,1], 3)

//내가 못푼 이유 -> 반드시 그래프를 만들어야 한다고 생각해서
//그래프를 만드는 것이 아니라 내가 그린 그래프대로 탐색만 하게 하면 된다!!!!!!!!!!!!!
//그래프는 이미 numbers를 통해서 주어진 것
