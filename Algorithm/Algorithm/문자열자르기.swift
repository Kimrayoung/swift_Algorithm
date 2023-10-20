//
//  main.swift
//  Algorithm
//
//  Created by 김라영 on 2023/04/17.
//

import Foundation
//프로그래머스 문자열 자르기

func splitsolution(_ s: String) -> Int {
    let sArr = Array(s)
    var result: Int = 0
    var x: Character = sArr[0] //기준이 되는 x
    var xCnt: Int = 1 //x의 개수
    var yCnt: Int = 0 //x와 다른 문자의 개수
    var index = 1 //현재 확인하는 인덱스
    var temp = 1 //몇개씩 자르는지
    var tempResult = 0 //어디까지 잘렸는지 확인하는 변수
    
    while index < sArr.count {
        if sArr[index] == x {
            xCnt += 1
        } else {
            yCnt += 1
        }

        if xCnt == yCnt {
            result += 1
            temp += 1
            tempResult += temp //어디까지 잘랐는지 확인

            temp = 0 //자르는 것 원상복귀
            if index != sArr.count - 1 {
                index += 1
                x = sArr[index]
                xCnt = 1
                yCnt = 0
            }
        }
        index += 1
        temp += 1
    }

    if tempResult != sArr.count { //만약에 다르면 맨끝에 자르지 않은 부분이 남아있다는 것
        result += 1
    }
    
    return result
}

//print(splitsolution("banana"))
//print(splitsolution("abracadabra"))
//print(splitsolution("aaabbaccccabba"))
//print(splitsolution("aabbcddd"))


import Foundation

////몇개가 시간초과 -> 아마 split하면서 시간초과
func splitsolution2(_ s: String) -> Int {
    let sArr = Array(s)
    var s = s
    var result: Int = 0
    var x: Character = sArr[0]
    var xCnt: Int = 1
    var yCnt: Int = 0
    var index = 1
    var temp = 1
    
    
    while index < sArr.count {
        if sArr[index] == x {
            xCnt += 1
        } else {
            yCnt += 1
        }

        if xCnt == yCnt {
            result += 1
            let firstIndex = s.index(s.startIndex, offsetBy: temp + 1)
            s = String(s[firstIndex...])
            temp = 0
            if index != sArr.count - 1 {
                index += 1
                x = sArr[index]
                xCnt = 1
                yCnt = 0
            }
        }
        index += 1
        temp += 1

    }
    if s.count != 0 {
        result += 1
    }
    
    return result
}

//다른 사람 풀이
//내가 제일 고민했던 부분
//for문이 아니라 while을 쓴 이유는 x가 계속해서 변경되니까
//즉, xCnt == ycnt라면 index += 1이 아니라 index += 2라고 생각했기 때문에
//for문을 사용하는 방법
//만약에 xCnt = 0이면 x에 그냥 문자만 할당하고 끝나면 된다 -> 그러기 위해서는 first에 아무거나 넣고 시작하면 된다

func splitSolution3(_ s: String) -> Int {
    var sArr = Array(s)
    var result:Int = 0
    var firstCharacter: Character = "A"
    var firstCnt: Int = 0
    var otherCnt: Int = 0
    
    for i in 0..<sArr.count {//맨 마지막은 어차피 비교대상이 없으므로 맨 마지막까지 반복문을 돌면서 확인
        if firstCnt == 0 { //x와 x가 아닌 글자의 수가 같아서 초기화 됬을 경우 x에 새로운 글자를 넣어줌
            firstCharacter = sArr[i]
            firstCnt = 1
        } else if sArr[i] == firstCharacter {
            firstCnt += 1
        } else {
            otherCnt += 1
        }
        
        if firstCnt == otherCnt {
            firstCnt = 0
            otherCnt = 0
            result += 1
        }
    }
    
    if firstCnt != 0 { //첫번째 카운트가 0이 아니라는 것은 마지막에 글자가 남아서 카운트가 되었다는 것을 의미한다
        result += 1
    }

    return result
}

//print(splitSolution3("banana"))
//print(splitSolution3("abracadabra"))
//print(splitSolution3("aaabbaccccabba"))
//print(splitSolution3("aabbcddd"))
