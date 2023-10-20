////
////  main.swift
////  Algorithm
////
////  Created by 김라영 on 2023/04/12.
////
//
//import Foundation
//
//let input = readLine()!.components(separatedBy: " ")
//let n = Int(input[0])! //정점의 개수
//let m = Int(input[1])! //간선의 개수
//var graph : [[Int]] = Array.init(repeating: [], count: n + 1)
//var visited: [Int] = Array.init(repeating: 0, count: n + 1)
//var s: [Int] = []
//
//for _ in 0..<m {
//    let mInput = readLine()!.components(separatedBy: " ")
//    let mFirst = Int(mInput[0])!
//    let mSecond = Int(mInput[1])!
////    print(mFirst, mSecond)
//    graph[mFirst].append(mSecond)
//    graph[mSecond].append(mFirst)
//}
//
//func dfs(_ start: Int) {
//    s.append(start)
//    visited[start] = 1
//    
//    while !s.isEmpty {
//        let node = s.removeLast()
//        
//        for n in graph[node] {
//            if visited[n] == 0 {
//                dfs(n)
//            }
//        }
//    }
//}
//
//var result = 0
//for i in 1...n {
//    if visited[i] == 0 {
//        result += 1
//        dfs(i)
//    }
//}
//print(result)
