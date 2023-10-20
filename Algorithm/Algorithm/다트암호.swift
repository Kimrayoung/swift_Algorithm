//다트암호
import Foundation

//내 풀이 방법
func dartsolution(_ dartResult:String) -> Int {
    var result = [0, 0, 0]
        var checkNumber = 0
        var changeDartResult = Array(dartResult)
        
        for (idx, value) in changeDartResult.enumerated() {
            if "0" <= value && value <= "9" {
                if value == "0" {
                    if idx == 0 {
                        result[checkNumber] = 0
                    } else {
                        if changeDartResult[idx - 1] == "1" {
                            result[checkNumber] = 10
                        } else {
                            result[checkNumber] = 0
                        }
                    }
                    result[checkNumber] = 10
                }
                 else {
                    result[checkNumber] = Int(String(value))!
                }
            }
            
            if value == "S" {
                result[checkNumber] = Int(pow(Double(result[checkNumber]), 1.0))
                checkNumber += 1
            } else if value == "D" {
                result[checkNumber] = Int(pow(Double(result[checkNumber]), 2.0))
                checkNumber += 1
            } else if value ==  "T" {
                result[checkNumber] = Int(pow(Double(result[checkNumber]), 3.0))
                checkNumber += 1
            }

            if value == "*" {
                if checkNumber == 1 {
                    result[0] = result[0] * 2
                } else {
                    result[checkNumber - 1] = result[checkNumber - 1] * 2
                    result[checkNumber - 2] = result[checkNumber - 2] * 2
                }
            }
            if value == "#" {
                result[checkNumber - 1] = result[checkNumber - 1] * -1
            }
        }
        
        return result.reduce(0, +)
}

//다른 사람 풀이 방법
func dartsolution2(_ dartResult:String) -> Int {
        let numberList = dartResult.split(whereSeparator: {$0.isLetter || $0 == "#" || $0 == "*"})
        let letterList = dartResult.split(whereSeparator: {$0.isNumber})

        var totalScore = 0

        for (i, (number, letter)) in zip(numberList, letterList).enumerated() {
            var score = 0
            if let number = Int(number) {
                score = letter.contains("D") ? number * number : letter.contains("T") ? number * number * number : number

            }

            if letter.contains("*") {
                score *= 2
            } else if letter.contains("#") {
                score = -score
            }

            if i != 2 {
                if letterList[i + 1].contains("*") {
                    score *= 2
                }
            }

            totalScore += score

        }


        return totalScore
}

func sortTest() {
    var sortArr = [3,1,55,3,2,6,2]
    
    sortArr.sort(by: { first, second in
        return first < second
    })
    
    print(sortArr)
}

//sortTest()
