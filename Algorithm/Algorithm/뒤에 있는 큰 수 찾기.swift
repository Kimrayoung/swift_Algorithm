//
//  main.swift
//  Algorithm
//
//  Created by 김라영 on 2023/04/04.
//

import Foundation

//시간 복잡도 O(n**2)으로 마지막 4개 케이스 통과 안됨
//비교하는 숫자의 크기가 두번째로 크다면 맨 마지막 까지 가야 확인을 할 수 있기 때문에 시간복잡도가 너무 커진다
//그러므로
func numbersolution(_ numbers: [Int]) -> [Int] {
    var result: [Int] = []
    
    for i in 0..<numbers.count {
        var stand = numbers[i]

        var tempIndex = i
        var tempNumber = 0
        
        if i == numbers.count - 1 {
            result.append(-1)
        }
        else {
            while tempIndex < numbers.count {
                if stand < numbers[tempIndex] {
                    tempNumber = numbers[tempIndex]
                    break
                }
                tempIndex += 1
            }
            
            if tempNumber != 0 {
                result.append(tempNumber)
                print("tempNumber", tempNumber, result)
            }else {
                result.append(-1)
                print("-1", result)
            }
        }
    }
    return result
}

//print(numbersolution([9,1,5,3,6,2]))


//스택을 이용해서, number보다 스택의 가장 위 요소가 클 때와 작을 때를 비교하면서 풀어야 한다
//뒤에 있는 숫자!!! -> 스택
//스택은 맨 뒤의 원소와 비교를 꺼내오므로,,,
//비교 대상이 없거나 비교를 했는데 일치하지 않으면 스택에서 뺸다
//스택에 넣어서 비교를 한다
//스택의 맨위에 있는 대상이랑 비교할 대상이랑 비교를 한다
//스택으로 쓰면 되는게 자신이랑 가장 가까이 있는 대상을 찾으면 되니까
//스택은 순서대로 들어가니까 스택의 가장 위에 있는게 자신이랑 가장 가까운 대상이 될 것!

func stackSolution(_ numbers: [Int]) -> [Int] {
    var answer = [Int]()
    var stack = [(Int, Int)]()
    print("stack", stack)
    for i in 0..<numbers.count {
        answer.append(-1)
        while !stack.isEmpty {
            if stack.last!.1 >= numbers[i] { break }
            answer[stack.removeLast().0] = numbers[i]
        }
        stack.append((i, numbers[i]))
        print("stack append", stack)
        print("answer", answer)
    }

    return answer
}

//print(stackSolution([4,1,5,3,6,2]))
