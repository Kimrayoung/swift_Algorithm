//
//  main.swift
//  Algorithm
//
//  Created by 김라영 on 2023/05/25.
//

import Foundation
/*
//L -> 커서 왼쪽으로(맨 앞이면 무시)
//D -> 커서 오른쪽으로(맨 뒤면 무시)
//B -> 커서 왼쪽문자 삭제(즉, 앞의 문자 삭제)
//P -> 문자 추가
var stackL = Array(readLine()!)
var stackR: [Character] = []
let num = Int(readLine()!)!

for i in 0..<num {
    let input = readLine()!

    if input == "L" {
        if !stackL.isEmpty {
            stackR.append(stackL.removeLast())
        }
    } else if input == "D" {
        if !stackR.isEmpty {
            stackL.append(stackR.removeLast())
        }
    } else if input == "B" {
        if !stackL.isEmpty {
            stackL.removeLast()
        }
    } else {
        stackL.append(input.last!)
    }
    
    if i == num - 1 {
        let reverseStackR = stackR.reversed()
        print(String(stackL + reverseStackR))
    }
}



 
 ->이 풀이 방법은 배열 자체를 변경하는 것이니까 시간초과가 발생한다
for i in 0..<num {
    let input = readLine()!.components(separatedBy: " ")
    input.count == 2 ? pFunction(input[1]) : moveFunction(input[0])
    
    if i == num - 1 {
        for i in stack {
            print(i, terminator: "")
        }
    }
}

func pFunction(_ inputChar: String) {
    index == 0 ? stack.insert(contentsOf: inputChar, at: 0) : stack.insert(contentsOf: inputChar, at: index)
    index += 1
}

func moveFunction(_ command: String) {
    if command == "L" {
        index = index != 0 ? index - 1 : index
    } else if command == "D" {
        index = index != stack.count - 1 ? index + 1 : index
    } else if command == "B" {
        if index != 0 {
            stack.remove(at: index - 1)
            index -= 1
        }
    }
}
*/


