//
//  main.swift
//  SimpleCalc
//
//  Created by Ted Neward on 10/3/17.
//  Copyright © 2017 Neward & Associates. All rights reserved.
//

import Foundation

public class Calculator {
    public func calculate(_ args: [String]) -> Int {
        if args.count == 1 {
            return 0
        }
    let last = Int(args[args.count - 1])
        if last != nil {
            let first = Int(args[0])
            if args[1] == "+" {
                return first! + last!
            } else if args[1] == "-" {
               /* if first! < last! {
                    return -(last! - first!)
                } else if last! < 0 {
                    return first! + last!
                } */
                return first! - last!
            } else if args[1] == "*" {
                return first! * last!
            } else if args[1] == "/" {
                return first! / last!
            } else if args[1] == "%" {
                let variable = first! / last!
                return first! - (variable * last!)
            }
        } else {
            let lastString = args[args.count - 1]
            if lastString == "count" {
                return args.count - 1
            } else if lastString == "avg" {
                var sum = 0
                var i = 0
                while i <= (args.count - 2) {
                    sum += (Int(args[i]))!
                    i += 1
                }
                return sum / (args.count - 1)
            } else if lastString == "fact"{
                var num = Int(args[0])
                var sum = num;
                num = num! - 1
                while num! > 0 {
                    sum = sum! * num!
                    num = num! - 1
                }
                return sum!
            }
        }
        return 0
    }
    
    public func calculate(_ arg: String) -> Int {
        return calculate( arg.split(separator: " ").map({ substr in String(substr) }) )
    }
}

print("UW Calculator v1")
print("Enter an expression separated by returns:")
let first = readLine()!
let operation = readLine()!
let second = readLine()!
print(Calculator().calculate([first, operation, second]))

