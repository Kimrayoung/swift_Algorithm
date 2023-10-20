//
//  main.swift
//  Algorithm
//
//  Created by 김라영 on 2023/04/03.
//

import Foundation

//let string = readLine()!
//make(string)

func make(_ word: String) {
    var words: [String] = []
    
    for i in 1...word.count {
        let temp = String(word.suffix(i))
        words.append(temp)
    }
    words = words.sorted()
    for sortWord in words {
        print(sortWord)
    }
}

//make("baekjoon")

func main(_ number: String) {
    var arr : [Int] = number.map {Int(String($0))!}
    let sum: Int = arr.reduce(0, +)
    print(sum)
}
//main("123")

//func temp() {
////    var str = "asap"
////    var str2 = str.replacingOccurrences(of: "a", with: "b")
////    print(str)  // 원본에 영향 없음
////    print(str2) // bbcdef
//    
//    var str = "as soon as posible"
//    //str[0] // 직접 접근 불가능, String 인덱스로 접근가능
////    str[str.startIndex] // "a" 시작 원소
//    let secondI = str.index(after: str.startIndex)
////    let secondIndex = str.index(after: str.startIndex) // 2번째 원소
//    let second = str[secondI]
//    print("second", second)
////    let endIndex = str.index(before: str.endIndex) // 마지막 원소
//     
//    let index = str.index(str.startIndex, offsetBy: 3)
//    print(str[index]) // "c"
//}

//temp()
