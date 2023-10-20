//
//  main.swift
//  Algorithm
//
//  Created by 김라영 on 2023/06/09.
//

//import Foundation
//
//let input = readLine()!.components(separatedBy: " ")
//var n = Int(input.first!)!
//let k = Int(input.last!)!
//var result = 0

//while n != 1 {
//    //n을 k로 나눌때가 항상 가장 크다고 가정한다
//    if n % k == 0 {
//        n = n / k
//    } else {
//        n -= 1
//    }
//    cnt += 1
//}
//
//
//print(cnt)

//while true {
//    //n을 k로 나눌 수 있는 가장 큰 수를 찾는다
//    //n을 k로 몇번 나눌 수 있는지 찾기 위해서
//    var target = (n / k) * k
//    //result는 n을 k로 나눌 수 없는 나머지 수(즉, 1로 뺄 수 밖에 없는 횟수)
//    result += (n - target)
//    //n을 k로 나누어떨어지는 수로 변경함
//    n = target
//
//    if n < k {
//        break
//    }
//
//    result += 1
//    n /= k
//}
//
////0을 만드는게 아니라 1로 만들어야 하므로
//result += (n - 1)
//print(result)
