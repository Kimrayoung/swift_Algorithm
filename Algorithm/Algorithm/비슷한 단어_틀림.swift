//
//  main.swift
//  Algorithm
//
//  Created by 김라영 on 2023/04/12.
//

import Foundation
//백준 - 비슷한 단어(2607)
//내가 못푼 이유는 첫번째 글자의 구성요소 중 한 글자가 비교하는 문자의 구성요소보다 한 글자가 클 수도 작을 수도 있음


//let input = Int(readLine()!)!
//var word: [[String:Int]] = Array(repeating: [:], count: input)
//var justWord: [String] = []
//
//for i in 0..<input {
//    let inputWord = readLine()!
//    justWord.append(inputWord)
//    for char in inputWord {
//        if word[i][String(char)] == nil {
//            word[i][String(char)] = 1
//        } else {
//            word[i][String(char)]! += 1
//        }
//    }
//}
//
//print(wordSolution())
//func wordSolution() -> Int {
//    var result: Int = 0
//    let firstWord = word[0]
//    var different = 0
//
//    for i in 1..<input {
//        let nowWord = word[i]
//        different = 0
//
//        if justWord[i].count == justWord[0].count {
//            for (char, charCnt) in nowWord {
//                if firstWord[char] == nil {
//                    different += charCnt
//                } else {
//                    if firstWord[char]! - charCnt > 0 {
//                        different += firstWord[char]! - charCnt
//                    }
//                }
//            }
//
//            if different < 2 {
//                result += 1
//                print(nowWord)
//            }
//
//        } else if justWord[i].count - justWord[0].count == 1 {
//            for (char, charCnt) in nowWord {
//                if firstWord[char] == nil {
//                    different += charCnt
//                } else {
//                    different += abs(firstWord[char]! - charCnt)
//                }
//            }
//            if different == 1 {
//                result += 1
//                print(nowWord)
//            }
//        } else if justWord[0].count - justWord[i].count == 1 {
//            for (char, charCnt) in firstWord {
//                if nowWord[char] == nil {
//                    different += charCnt
//                } else {
//                    different += abs(nowWord[char]! - charCnt)
//                }
//            }
//            if different == 1 {
//                result += 1
//                print(nowWord)
//            }
//        }
//    }
//
//    return result
//}





//print(word)
//print(wordSolution())
//
//func wordSolution() -> Int{
//    var result: Int = 0
//    var different: Int = 0
//    let firstWord = word[0]
//    for i in 1..<input {
//        different = 0
//        let nowWord = word[i]
//        print("nowWord", nowWord)
//        print(justWord[0].count, justWord[i].count)
//        //길이가 같을때
//        if justWord[i].count == justWord[0].count {
//            print("길이가 같음")
//            for (char, charCnt) in nowWord {
//                if firstWord[char] == nil {
//                    different += charCnt
//                } else {
//                    if firstWord[char]! - charCnt > 0 {
//                        different += firstWord[char]! - charCnt
//                    }
//
//                }
//
//            }
//            print("길이가 같은데 다른 거의 개수", different)
//            if different < 2 {
//                result += 1
//
//            }
//
//        } else {
//            //길이가 다를 때
//            if abs(justWord[i].count - justWord[0].count) == 1 {
//                print("한 단어 차이")
//                if justWord[i].count < justWord[0].count {
//
//                    for (char, charCnt) in firstWord {
//                        if nowWord[char] == nil {
//                            different += charCnt
//                        } else {
//                            different += abs(nowWord[char]! - charCnt)
//                        }
//                    }
//                    print("첫번째 단어가 더 길경우", different)
//                    if different == 1 {
//                        result += 1
//                    }
//                } else { //단어길이가 길경우
//                    for (char, charCnt) in nowWord {
//                        if firstWord[char] == nil {
//                            different += charCnt
//                        } else {
//                            different += abs(firstWord[char]! - charCnt)
//                        }
//                    }
//                    print("두번쨰 단어가 더 길 경우", different)
//                    if different == 1 {
//                        result += 1
//                    }
//
//                }
//                print("한 단어 차이가 아닐경우")
//
//            }
//
//        }
//        print("result", result)
//    }
//
//    return result
//}


