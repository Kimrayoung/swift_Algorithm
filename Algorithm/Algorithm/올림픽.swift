//
//  main.swift
//  Algorithm
//
//  Created by 김라영 on 2023/04/04.
//

import Foundation


func grade(_ teamCnt: Int, _ wantTeamNum: Int,_ teamScore: [[Int]]) -> Int {
    var result: Int = 1
    var teamInfo : [Int : Int] = [:] //팀 이름(숫자), 팀 점수(메달의 개수)
    
    //각 팀의 점수를 저장한다
    for score in teamScore {
        let sum = score[1] * 3 + score[2] * 2 + score[3] * 1
        teamInfo[score[0]] = sum
    }
    
    //알고 싶은 팀의 점수를 저장한다
    let wantTeamScore = teamInfo[wantTeamNum]
    //알고싶은 팀의 점수보다 높은 팀이 있다면 등수가 내려간다
    for team in teamInfo {
        if team.value > wantTeamScore! {
            result += 1
        }
    }
    
    return result
}

//print(grade(4, 3, [[1,1,2,0], [2,0,1,0],[3,0,1,0],[4,0,0,1]]))
//print(grade(4, 3, [[1,3,0,0], [3,0,0,2],[4,0,2,0],[2,0,2,0]]))
