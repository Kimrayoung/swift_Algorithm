//
//  main.swift
//  Algorithm
//
//  Created by 김라영 on 2023/04/10.
//

import Foundation

//let cnt = Int(readLine()!)!
//let pattern = readLine()!
//var result : [String] = []

//for _ in 0..<cnt {
//    let fileName = readLine()!
//    result.append(fileSolution(pattern, fileName))
//}
//
//for i in result {
//    print(i)
//}

func fileSolution(_ pattern: String, _ fileName: String) -> String {
    var patternArr: [String] = []
    let fileNameArr = Array(fileName)
    var temp: String = ""
    
    for char in pattern {
        if char == "*" {
            patternArr.append(temp)
            temp = ""
        } else {
            temp += String(char)
        }
    }
    patternArr.append(temp)
    
    if patternArr.first!.count + patternArr.last!.count > fileName.count {
        return "NE"
    }

    let fileFirst = String(fileNameArr[0..<patternArr.first!.count])
    let lastCnt = fileName.count - patternArr.last!.count
    let fileLast = String(fileNameArr[lastCnt...])
    
    if fileFirst == patternArr.first && fileLast == patternArr.last {
        return "DA"
    }
    else {
        return "NE"
    }
}



//https://velog.io/@shin_ms/%ED%95%9C%EA%B5%AD%EC%9D%B4-%EA%B7%B8%EB%A6%AC%EC%9A%B8-%EB%95%90-%EC%84%9C%EB%B2%84%EC%97%90-%EC%A0%91%EC%86%8D%ED%95%98%EC%A7%80-%EB%B0%B1%EC%A4%80-9996%EB%B2%88
