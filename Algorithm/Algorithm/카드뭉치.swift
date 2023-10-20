//
//  main.swift
//  Algorithm
//
//  Created by 김라영 on 2023/04/04.
//

import Foundation
func cardsolution(_ cards1:[String], _ cards2:[String], _ goal:[String]) -> String {
    var cards1Arr = cards1
    var cards2Arr = cards2
    for word in goal {
        if cards1.contains(word) {
//            print("card1", cards1Arr.first)
            if cards1Arr.first! == word {
                cards1Arr.removeFirst()
            } else {
                return "No"
            }
        } else {
//            print("card2", cards2Arr.first)
            if cards2Arr.first! == word {
                cards2Arr.removeFirst()
            } else {
                return "No"
            }
        }
    }
    
    return "Yes"
}

//print(cardsolution(["i", "water", "drink"], ["want", "to"], ["i", "want", "to", "drink", "water"]))
