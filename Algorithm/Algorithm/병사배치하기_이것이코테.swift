////
////  File.swift
////  Algorithm
////
////  Created by 김라영 on 2023/06/09.
////
//
//import Foundation
////이것이 코테 - 병사 배치하기
//
//let cnt = Int(readLine()!)!
//let power = readLine()!.components(separatedBy: " ").reversed().map { ele in
//    Int(ele)!
//}
//
////dp테이블을 미리 만들어준다
////처음에 각 원소의 수열의 길이는 자기자신만을 가지고 있으므로 1이다
//var dp: [Int] = Array(repeating: 1, count: cnt)
//
//for i in 1..<cnt{
//    for j in 0..<i {
//        //현재 자신의 원소보다 앞의 원소가 더 작다면(즉, 수열로 만들 수 있음)
//        if power[j] < power[i] {
//            //dp[i]를 항상 가장 큰 값이 되도록 갱신해줘야 한다
//            dp[i] = max(dp[i], dp[j] + 1)
//        }
//    }
//}
//
////dp테이블에서 가장 큰 값을 찾음
//let maxPower = dp.max()!
//
//print(cnt - maxPower)
