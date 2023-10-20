//
//  main.swift
//  Algorithm
//
//  Created by 김라영 on 2023/07/21.
//

import Foundation

func example() {
    DispatchQueue.global().sync {
        for i in 1...5 {
            print(i)
        }

        print("==================")
    }



    for i in 100...105 {
        print(i)
    }
}

func example2() {
    let ramooQueue = DispatchQueue(label: "ramoo")
    
    ramooQueue.sync {
        for i in 1...5 {
            print(i)
        }
    }
    print("========================")
    for i in 100...105 {
        print(i)
    }
}

func example3() {
    DispatchQueue.global().async {
        for i in 1...5 {
            print("\(i)⭐️")
        }

        print("==================")
    }

    DispatchQueue.global().async {
        for i in 200...205 {
            print("\(i)🔥")
        }

        print("==================")
    }


    for i in 100...105 {
        print("\(i)🌸")
    }
}

func example4() {
    let ramooQueue = DispatchQueue(label: "ramoo")
    
    ramooQueue.async {
        for i in 1...5 {
            print("\(i)⭐️")
        }

        print("==================")
    }
    print("========================")
    
    ramooQueue.async {
        for i in 200...205 {
            print("\(i)🔥")
        }

        print("==================")
    }
    print("========================")
    
    for i in 100...105 {
        print("\(i)🌸")
    }
}

//example()
//example2()
example3()
