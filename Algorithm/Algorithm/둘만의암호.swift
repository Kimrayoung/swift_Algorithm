//
//  main.swift
//  Algorithm
//
//  Created by 김라영 on 2023/04/03.
//

import Foundation

func passwordsolution(_ s: String, _ skip: String, _ index: Int) -> String {
    var result: String = ""
    let dictionary: Dictionary<Character, Int> = [
        "a":1, "b":2, "c":3, "d": 4, "e": 5, "f": 6, "g": 7, "h": 8, "i": 9, "j": 10, "k": 11, "l": 12, "m": 13, "n": 14, "o": 15,"p": 16, "q": 17, "r": 18, "s": 19, "t": 20, "u": 21, "v": 22, "w": 23, "x": 24, "y": 25, "z" : 26
    ]
    
    let dictionaryChar: Dictionary<Int, Character> = [
        1:"a", 2:"b", 3:"c", 4:"d", 5: "e", 6:"f", 7:"g", 8:"h", 9:"i", 10:"j", 11:"k", 12:"l", 13:"m", 14:"n", 15:"o", 16:"p", 17:"q", 18:"r", 19:"s", 20:"t", 21:"u", 22:"v", 23:"w", 24:"x", 25:"y", 26:"z"
    ]
    
    var skipDictionary: [Int] = []
    for char in skip {
        skipDictionary.append(dictionary[char]!)
    }
//    skipDictionary.sort()
    
    for char in s {
        var charIndex = dictionary[char]
        var tempIndex = charIndex! + index
        var tempIndexSmall = 0
        var tempCnt = 0
        
        if tempIndex > 26 {
            tempIndexSmall = tempIndex - 26
            for num in 1...tempIndexSmall {
                if skipDictionary.contains(num) {
                    tempCnt += 1
                }
            }
            for num in charIndex!...26 {
                if skipDictionary.contains(num) {
                    tempCnt += 1
                }
            }
        } else {
            for num in charIndex!...tempIndex {
                if skipDictionary.contains(num) {
                    tempCnt += 1
                }
            }
        }
//        print("tempCnt", tempCnt)
        charIndex! += (tempCnt + index)
//        print("charIndex", charIndex)
        if charIndex! > 26 {
            charIndex! -= 26
        }
        
        result.append(dictionaryChar[charIndex!]!)
    }
    
    return result
}


//print(passwordsolution("atgh", "sjx", 10))

func passsolution(_ s: String, _ skip: String,_ index: Int) -> String {
    //맨처음과 맨 끝의 아스키코드 구하기 -> 처음과 끝이 어딘지 알 수 있도록
    var aAscii = Int(UnicodeScalar("a").value)
    var zAscii = Int(UnicodeScalar("z").value)
    
    //해당 아스키코드는 건널뛸 수 있ㄷ록
    var skipAscii = skip.map {
        Int(UnicodeScalar(String($0))!.value)
    }
    
    var result = ""
    
    for char in s {
        var charAscii = Int(UnicodeScalar(String(char))!.value)
        
        //얼마만큼 이동했는지 체크하기 위해서!
        var indexCnt = 0
        
        //정해진 만큼 이동했으면 반복문 종료
        while indexCnt < index {
            charAscii += 1
            
            //만약에 이동하다가 끝에 다다르면 아스키코드를 처음으로 돌림
            if charAscii > zAscii {
                charAscii = aAscii
            }
            
            //지나가던 중에 내가 변환하는 아스키코드가 넘겨야 하는 아스키코드에 포함되면 그때는 그냥 indexCnt를 스킴함
            if skipAscii.contains(charAscii) {
                continue
            } else {
                indexCnt += 1
            }
        }
//        print(String(UnicodeScalar(charAscii)!))
        result.append(String(UnicodeScalar(charAscii)!))
    }
    return result
    
}
//print(passsolution("aukks", "wbqd", 5))
//https://dokit.tistory.com/23
