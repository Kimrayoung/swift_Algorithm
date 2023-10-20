////
////  main.swift
////  Algorithm
////
////  Created by 김라영 on 2023/04/11.
////
//
//import Foundation
//
////dfs&bfs - backjoon 1260
//let input = readLine()!.components(separatedBy: " ")
//let nodeCnt = Int(input[0])!
//let lineCnt = Int(input[1])!
//let startNode = Int(input[2])!
//
//var nodeDic : [Int : [Int]] = [0 : []]
//var sortnodeDic :[Int: [Int]] = [0:[]]
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
//    if nodeDic[first] == nil {
//        nodeDic[first] = [second]
//    } else {
//        nodeDic[first]?.append(second)
//    }
//    
//    if nodeDic[second] == nil {
//        nodeDic[second] = [first]
//    } else {
//        nodeDic[second]?.append(first)
//    }
//}
//
//for (k, v) in nodeDic {
//    sortnodeDic[k] = v.sorted()
//}
//
//
//let dfsResult = dfs(startNode)
//print(dfsResult)
//let bfsResult = bfs(startNode)
//print(bfsResult)
//
//func dfs(_ startNode: Int) -> String {
//    visited[0] = true
//    visited[startNode] = true
//    result += "\(startNode) "
//    
//    for i in sortnodeDic[startNode]! { //정렬된 간선 탐색하기
//        if !visited[i] { //만약에 갔다왔으면 다시 안가도 되니까
//            dfs(i)
//        }
//    }
//    return result
//}
//
//
//func bfs(_ startNode: Int) -> String {
//    var visitedQue: [Int] = []
//    var needVisitQue: [Int] = [startNode]
//    var bfsResult: String = ""
//    
//    while !needVisitQue.isEmpty {
//        let node: Int = needVisitQue.removeFirst()
//        if visitedQue.contains(node) { continue }
//        
//        visitedQue.append(node)
//        bfsResult += "\(node) "
//        needVisitQue.append(contentsOf: sortnodeDic[node]!)
//    }
//    
//    return bfsResult
//}
