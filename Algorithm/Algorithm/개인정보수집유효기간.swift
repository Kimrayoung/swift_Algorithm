//
//  main.swift
//  Algorithm
//
//  Created by 김라영 on 2023/04/27.
//
import Foundation

//프로그래머스 - 개인정보 수집 유효기관
func personalsolution(_ today: String, _ terms: [String], _ privacies: [String]) -> [Int] {
    var answer: [Int] = []

    let formatter = DateFormatter()
    formatter.dateFormat = "YYYY.MM.dd"

    let today = formatter.date(from: today)!
    var termsDict: [String: Int] = [:]

    terms.forEach { term in
        let split = term.split(separator: " ").map { String($0) }
        termsDict[split[0]] = Int(split[1])!
    }

    for (i, privacy) in privacies.enumerated() {
        let split = privacy.split(separator: " ").map { String($0) }

        guard let date = formatter.date(from: split[0]),
              let term = termsDict[split[1]] else {
            continue
        }

        let month = DateComponents(month: term)
        let expiration = Calendar.current.date(byAdding: month, to: date)!

        if today >= expiration {
            answer.append(i + 1)
        }
    }

    return answer
}
