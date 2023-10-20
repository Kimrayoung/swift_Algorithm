//
//  main.swift
//  Algorithm
//
//  Created by 김라영 on 2023/05/25.
//

import Foundation
//백준-괄호
/*
let num = Int(readLine()!)!

for _ in 0..<num {
    let inputString = readLine()!
    
    vpsChecking(inputString)
}

func vpsChecking(_ input: String) {
    var stack: [Character] = []
    for char in input {
        if char == "(" {
            stack.append(char)
        } else {
            if let last = stack.last {
                if last == "(" {
                    stack.popLast()
                } else {
                    stack.append(")")
                }
            } else {
                stack.append(")")
            }
        }
    }
    print(stack.isEmpty ? "YES" : "NO")
}
*/
