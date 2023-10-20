//
//  main.swift
//  Algorithm
//
//  Created by 김라영 on 2023/04/12.
//

import Foundation
//백준 - 연결요소(11724)
//let input = readLine()!.components(separatedBy: " ")
//let n = Int(input[0])! //정점의 개수
//let m = Int(input[1])! //간선의 개수
//var graph : [[Int]] = Array.init(repeating: [], count: n + 1)
//var visited: [Int] = Array.init(repeating: 0, count: n + 1)
//
//for _ in 0..<m {
//    let mInput = readLine()!.components(separatedBy: " ")
//    let mFirst = Int(mInput[0])!
//    let mSecond = Int(mInput[1])!
////    print(mFirst, mSecond)
//    graph[mFirst].append(mSecond)
//    graph[mSecond].append(mFirst)
//}


//func bfs(_ start: Int) {
//    visited[start] = 1
//    var needVisitQueue: [Int] = graph[start]
//
//    while !needVisitQueue.isEmpty {
//        let node: Int = needVisitQueue.removeFirst()
//        if visited[node] == 0 {
//            visited[node] = 1
//            needVisitQueue.append(contentsOf: graph[node])
//            print("needVisitQueue", needVisitQueue)
//        }
//    }
//
//}

//func bfs(_ start: Int) {
//    visited[start] = 1
//    var needVisitQueue: [Int] = [start]
//
//    while !needVisitQueue.isEmpty {
//        let node: Int = needVisitQueue.removeFirst()
//        for n in graph[node] {
//            print("n", n)
//            if visited[n] == 0 {
//                visited[n] = 1
//                needVisitQueue.append(n)
//                print("needVisitQueue", needVisitQueue)
//            }
//        }
//    }
//    
//}



//var result = 0
//for i in 1...n {
//    if visited[i] == 0 {
//        result += 1
//        bfs(i)
//    }
//}
//print(result)


//
//  main.swift
//  Algorithm
//
//  Created by 김라영 on 2023/04/12.
//

//import Foundation
////백준 - 연결요소(11724)
//let input = readLine()!.components(separatedBy: " ")
//let n = Int(input[0])! //정점의 개수
//let m = Int(input[1])! //간선의 개수
//var graph : [[Int]] = Array.init(repeating: [], count: n + 1)
//var numberStack: [Int] = Array(1...n)
//
//for _ in 0..<m {
//    let mInput = readLine()!.components(separatedBy: " ")
//    let mFirst = Int(mInput[0])!
//    let mSecond = Int(mInput[1])!
////    print(mFirst, mSecond)
//    graph[mFirst].append(mSecond)
////    graph[mSecond].append(mFirst)
//}
//
//
//func bfs() {
//    var result = 0
//    var visitedQueue: [Int] = []
//    var needVisitQueue: [Int] = []
//
//    while !numberStack.isEmpty {
//        let number = numberStack.removeFirst()
//        if !visitedQueue.contains(number) {
//            needVisitQueue.append(number)
//            result += 1
//            while !needVisitQueue.isEmpty {
//                let node: Int = needVisitQueue.removeFirst()
//                if visitedQueue.contains(node) { continue }
//                visitedQueue.append(node)
//                needVisitQueue.append(contentsOf: graph[node])
//            }
//        }
//
//    }
//    print(result)
//}
//
//
//
//bfs()

