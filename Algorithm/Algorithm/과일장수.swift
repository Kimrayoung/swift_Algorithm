//
//  과일장수.swift
//  Algorithm
//
//  Created by 김라영 on 2023/04/17.
//

import Foundation
//프로그래머스 - 과일장수

//1. 배열을 정렬한다
//2. 한 상자의 개수만큼 배열을 자른 후에 딕셔너리로 만든다 -> 딕셔너리에 값이 있을 경우 +1 없을 경우 = 1
//3. 딕셔너리에 저장된 형태는 이미 정렬된 것이므로 가장 마지막 값이 최소값
func fruitsolution(_ k:Int, _ m:Int, _ score:[Int]) -> Int {
    var result = 0
    var scoreSort = score.sorted(by: >)
    var boxCnt = score.count / m
    var box: [[Int] : Int] = [:]
    if boxCnt == 1 {
        box[Array(scoreSort[0..<m])] = 1
    } else {
        for i in 0..<boxCnt {
            let first = i * m
            let last = (i * m) + m
            if box[Array(scoreSort[first..<last])] == nil {
                box[Array(scoreSort[first..<last])] = 1
            } else {
                box[Array(scoreSort[first..<last])]! += 1
            }
        }
    }
    
    for b in box {
        let min = b.key.last!
        let cnt = b.value
        result += (min * m * cnt)
    }
    
    return result
}

//1. 상자에 넣을 수 없는 사과의 개수를 구한다
//2. 사과의 품질을 정렬한 후 상자에 넣을 사과의 개수만 배열로 만든다
//3. stride함수를 통해서 배열 자르는 첫번쨰 인덱스를 지정한다
//4. 자른 배열에서 가장 작은 부분 수를 찾고 그거에 사과의 갯수를 곱한다
//5. 전체에서 더해준다
func fruitSolution2(_ k:Int, _ m:Int, _ score:[Int]) -> Int {
    var ans = 0

    let mod = score.count % m //몇개가 못들어가는지 구하기
    let score = score.sorted(by: >)[0..<score.count - mod]
    print(score)
    
    for i in stride(from: 0, to: score.count, by: m) {
        ans += Array(score[i..<i+m]).min()! * m
    }
    
    return ans
}

//print(fruitSolution2(3, 4, [1,2,3,1,2,3,1]))

//내가 어렵게 생각한 부분
//1. 같은 것이 여러개이면 곱해서 더하는 거랑 더하기더하기 하는 거랑은 같은데 다르다고 생각함

//그러니까 [1,1,2] [2,2,2] [4,4,4] [4,4,4]일 때 -> 1 * 3 + 2 * 3 + 4 * 3 + 4 * 3 이랑
// 1 * 3 * 1 + 2 * 3 * 1 + 4 * 3 * 2랑 동일함!!
