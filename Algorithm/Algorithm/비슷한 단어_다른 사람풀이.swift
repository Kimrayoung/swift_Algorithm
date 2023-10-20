////
////  main.swift
////  Algorithm
////
////  Created by 김라영 on 2023/04/13.
////
//
//import Foundation
//import Foundation
//
//let n = Int(readLine()!)!
//let target = readLine()!.map{String($0)}
//var targetArr = Array(repeating: 0, count: 26) //첫번째 단어가 어떤 글자로 이루어져 있는지
//for target in target{
//    let idx = Int(Character(target).asciiValue!) - 65
//    targetArr[idx] += 1
//}
//var ans = 0
//
//func similar(with tmp:[String]) -> Bool{
//    var result = false
//    var arr = targetArr
//    
//    if target.count == tmp.count{ //두개의 글자 수가 동일할 경우
//        var cnt = target.count //구성 요소의 차이를 구하기 위해서
//        for tmp in tmp{
//            let idx = Int(Character(tmp).asciiValue!) - 65
//            if arr[idx] > 0{ //비교하는 문자의 구성요소가 첫번째 문자에 포함이 되어있을 경우
//                cnt -= 1
//                arr[idx] -= 1 //같은 글자가 여러개일 경우
//            }
//        }
//        if cnt < 2{ result = true } //모든 구성요소가 동일하거나 한 글자만 차이날 경우
//    }else if target.count == tmp.count + 1{ //첫번째 글자보다 한 글자 길 경우
//        var cnt = target.count
//        for tmp in tmp{
//            let idx = Int(Character(tmp).asciiValue!) - 65
//            if arr[idx] > 0{
//                cnt -= 1
//                arr[idx] -= 1
//            }
//        }
//        if cnt == 1{ result = true }
//    }else if target.count + 1 == tmp.count{ //첫번째 글자보다 한 글자 짧을 경우
//        var cnt = tmp.count
//        for tmp in tmp{
//            let idx = Int(Character(tmp).asciiValue!) - 65
//            if arr[idx] > 0{
//                cnt -= 1
//                arr[idx] -= 1
//            }
//        }
//        if cnt == 1{ result = true }
//    }else{
//        result = false
//    }
//
//    return result
//}
//
//for _ in 1..<n{
//    let tmp = readLine()!.map{String($0)}
//    if similar(with: tmp){
//        ans += 1
//    }
//}
//print(ans)
//https://hyun083.tistory.com/117
