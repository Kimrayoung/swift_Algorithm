//
//  main.swift
//  Algorithm
//
//  Created by 김라영 on 2023/06/16.
//

import Foundation
//음로수 얼려먹기 - 이것이 코딩테스트다

//let input = readLine()!.components(separatedBy: " ")
//let n = Int(input[0])!
//let m = Int(input[1])!
//
//var graph: [[Int]] = []
//var result: Int = 0

//for _ in 0 ..< n {
//    graph.append(readLine()!.map{ Int(String($0))! })
//}
//
//func dfs(_ x: Int, _ y : Int) -> Bool {
//    if x <= -1 || x >= n || y <= -1 || y >= m {
//        return false
//    }
//    
//    //해당 좌표(노드)가 0인 것 -> 아직 노드를 방문하지 않은 것
//    if graph[x][y] == 0 {
//        graph[x][y] = 1 //노드를 방문했다고 표시해줌
//        
//        //상하좌우를 살펴봄
//        dfs(x - 1, y)
//        dfs(x, y - 1)
//        dfs(x + 1, y)
//        dfs(x, y + 1)
//        
//        return true
//    }
//    
//    //1이라면 이미 방문한 노드이거나 막힌 곳
//    return false
//}
//
//for i in 0 ..< n {
//    for j in 0 ..< m {
//        if dfs(i,j) {
//            result += 1
//        }
//    }
//}
//
//print(result)
