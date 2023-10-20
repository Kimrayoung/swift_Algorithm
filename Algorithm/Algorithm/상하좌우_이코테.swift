////
////  main.swift
////  Algorithm
////
////  Created by 김라영 on 2023/06/12.
////
//
//import Foundation
////이코테 - 상하좌우
//var x: Int = 1 //현재 x위치
//var y: Int = 1 //현재 y위치
//var nx: Int = 1 //이동하게 될 x위치
//var ny: Int = 1 //이동하게 될 y위치
//
//var dx: [Int] = [0,0,-1,1]
//var dy: [Int] = [-1,1,0,0]
//
//let n = Int(readLine()!)!
//
//let direction = readLine()!.components(separatedBy: " ")
//let moveType = ["L", "R", "U", "D"]
//
//for d in direction {
//    for i in 0..<moveType.count {
//        //moveType에 맞게 어떻게 이동할지 확인함
//        if moveType[i] == d {
//            //변경하게 될 좌표 확인
//            nx = x + dx[i]
//            ny = y + dy[i]
//        }
//    }
//    
//    //좌표를 벗어나면 이동하지 않는다
//    if nx < 1 || ny < 1 || nx > n || ny > n {
//        continue
//    }
//    //실제 좌표 변경
//    x = nx
//    y = ny
//}
//
//print(x, y)
