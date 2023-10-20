//
//  main.swift
//  Algorithm
//
//  Created by 김라영 on 2023/06/08.
//

//import Foundation
////효율적인 화폐 구성 - 이것이 코딩테스트다
//
//let input = readLine()!.components(separatedBy: " ")
//let n = Int(input.first!)!
//let m = Int(input.last!)!
//
//var unit: [Int] = [] //화폐단위
//
////dp 테이블 초기화
//var dp: [Int] = Array(repeating: 10001, count: m + 1)
//dp[0] = 0
//
////화폐 단위를 입력받음
//for _ in 0..<n {
//    let t = Int(readLine()!)!
//    unit.append(t)
//}
//
//for i in unit {
//    for j in i...m { //처음부터 진행할 필요는 없다(화폐단위부터 계산)
//        print(j - i,dp[j - i])
//        if dp[j - i] != 10001 { //현재의 화폐단위로 계산할 수 있는 금액일 때
//            dp[j] = min(dp[j], dp[j - i] + 1)
//        }
//    }
//}
//
////결과값 출력
//dp[m] == 10001 ? print(-1) : print(dp[m])

