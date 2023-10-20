////
////  main.swift
////  Algorithm
////
////  Created by 김라영 on 2023/04/12.
////
//import Foundation
//
////dfs&bfs - backjoon 1260
//let input = readLine()!.components(separatedBy: " ")
//let nodeCnt = Int(input[0])!
//let lineCnt = Int(input[1])!
//let startNode = Int(input[2])!
//
//var graph : [[Int]] = Array.init(repeating: [], count: nodeCnt + 1)
//var visited = Array.init(repeating: false, count: nodeCnt + 1)
//var result: String = ""
//
////간선 정리하기
//for _ in 0..<lineCnt {
//    let lineInput = readLine()!.components(separatedBy: " ")
//    let first = Int(lineInput.first!)!
//    let second = Int(lineInput.last!)!
//    
//    //양방향 간선이므로 양쪽 간선을 서로 모두에게 저장해줘야 함
//    graph[first].append(second)
//    graph[second].append(first)
//    graph[first].sort()
//    graph[second].sort()
//}
//
//
//
//func dfs(_ startNode: Int) {
//    visited[startNode] = true
//    result += "\(startNode) "
//    
//    for i in graph[startNode] { //정렬된 간선 탐색하기
//        if !visited[i] { //만약에 갔다왔으면 다시 안가도 되니까
//            dfs(i)
//        }
//    }
//}
//
//
//func bfs(_ startNode: Int) {
//    var visitedQue: [Int] = []
//    var needVisitQue: [Int] = [startNode]
//    
//    while !needVisitQue.isEmpty {
//        let node: Int = needVisitQue.removeFirst()
//        if visitedQue.contains(node) { continue }
//        
//        visitedQue.append(node)
//        result += "\(node) "
//        needVisitQue.append(contentsOf: graph[node])
//    }
//}
//
//dfs(startNode)
//print(result)
//result = ""
//bfs(startNode)
//print(result)
