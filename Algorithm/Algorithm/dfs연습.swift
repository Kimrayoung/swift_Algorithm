////
////  main.swift
////  Algorithm
////
////  Created by 김라영 on 2023/04/11.
////
//
////dfs
//import Foundation
//
//let graph = [
//    [],
//    [2,3], //1
//    [1,4,5],//2
//    [1,6,7],//3
//    [2],//4
//    [2],//5
//    [3],//6
//    [3,8],//7
//    [7]//8
//]
//
//var visited = Array.init(repeating: false, count: graph.count)
//
////dfs(start: 1)
//dfs2(start: 1)
//
////재귀함수를 이용한 풀이
//func dfs(start: Int) {
//    visited[start] = true //start는 시작점
//    print("start",start, terminator: " ")
//    
//    for i in graph[start] {
//        if !visited[i] {
//            print("visited[i]", visited[i], i)
//            dfs(start: i)
//        }
//    }
//}
//
////stack & queue를 이용한 풀이
////방문해야 하는 노드 -> stack(LIFO)
////방문 한 노드 -> queue(FIFO)
//func dfs2(start: Int) {
//    var needVisitStack: [Int] = [start]
//    var visitedQueue: [Int] = []
//    
//    while !needVisitStack.isEmpty { //방문해야 하는 노드가 비어있다면
//        let node: Int = needVisitStack.removeLast() //가장 마지막 노드를 가지고 온다
//        if visitedQueue.contains(node) { //이미 방문한 노드라면 아래를 하지 않는다
//            continue
//        }
//        visitedQueue.append(node) //아직 방문하지 않았다면 해당 노드를 방문했다고 넣어줌
//        print("graph[node]", graph[node])
//        needVisitStack += graph[node] ?? [] //그리고 방문한 노드랑 연결된 선들을 넣어준다
//    }
//    print(visitedQueue)
//}
//
