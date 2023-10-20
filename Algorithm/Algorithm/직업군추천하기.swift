//
//  main.swift
//  Algorithm
//
//  Created by 김라영 on 2023/04/14.
//

import Foundation

//위클리 챌린지 - 직업군 추천하기

func jobSolution(_ table: [String], _ languages: [String],_ preference: [Int]) -> String{
    var tableValue: [[String]] = []
    var langDic: [String: Int] = [:]
    var preferDic: [String: Int] = [:]
    var sum = 0
    //테이블 언어별로 구분해주기
    for i in table {
        let temp = i.components(separatedBy: " ")
        tableValue.append(temp)
    }
    
    //언어별로 몇점인지 딕셔너리 생성
    for i in 0..<languages.count {
        langDic[languages[i]] = preference[i]
    }
    
    //직업군 점수 만들기
    for i in 0..<tableValue.count {
        sum = 0
        for j in 1..<tableValue[i].count {
            
            if langDic[tableValue[i][j]] != nil {
                sum += langDic[tableValue[i][j]]! * (6-j)
                preferDic[tableValue[i][0]] = sum
            }
        }
    }
    
    //딕셔너리 정렬하기
    let result = preferDic.sorted { fir, sec in
        return fir.value > sec.value ? true : false
    }
    
    //가장 첫번째꺼가 가장 많은 점수를 받은 직업군
    return result[0].key
    
}

//print(jobSolution(["SI JAVA JAVASCRIPT SQL PYTHON C#", "CONTENTS JAVASCRIPT JAVA PYTHON SQL C++", "HARDWARE C C++ PYTHON JAVA JAVASCRIPT", "PORTAL JAVA JAVASCRIPT PYTHON KOTLIN PHP", "GAME C++ C# JAVASCRIPT C JAVA"], ["PYTHON", "C++", "SQL"], [7,5,5]))
