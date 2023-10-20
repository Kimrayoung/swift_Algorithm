//
//  main.swift
//  Algorithm
//
//  Created by 김라영 on 2023/06/07.
//

import Foundation
//1로 만들기 - 이것이 코딩테스트다

//let x = Int(readLine()!)!

//최대 30000만까지 나올 수 있으므로 크기가 30001인 배열을 만든다
//var num = Array(repeating: 0, count: x + 1)

//1을 뺄때, 2로 나눌때, 3으로 나눌때, 5로 나눌때를 차례대로 실행하면 해당 숫자에서 가장 작게 연산된 경우를 구할 수 있다
//즉, 2로 나눌때는 -> 1을 뻈을 떄와 2로 나눴을 때를 비교
//3으로 나눌 때는 -> 2로 나눴을 때의 결과와 3으로 나눴을 떄를 비교
//5로 나눌떄는 -> 3으로 나눴을 때의 결과와 5로 나눴을 때를 비교한다
//이렇게 차례대로 비교하면 어떨 때 가장 적게 연산했는지 알 수 있다
//for i in 2...x {
//    num[i] = num[i - 1] + 1
//
//    if num[i] % 2 == 0 {
//        num[i] = min(num[i], num[i / 2] + 1)
//    }
//    if num[i] % 3 == 0 {
//        num[i] = min(num[i], num[i / 3] + 1)
//    }
//    if num[i] % 5 == 0 {
//        num[i] = min(num[i], num[i / 5] + 1)
//    }
//}
//print(num[x])
