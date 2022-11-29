//
//  main.swift
//  dz4
//
//  Created by Jarae on 27/11/22.
//

import Foundation

//task1
print("task1")
var n2 = 2
var n3 = 3
var n4 = 4
var n5 = 5
for num in 1...100{
    if num % n2 == 0 || num % n3 == 0 || num % n4 == 0 || num % n5 == 0{
        print("\(num),", terminator: " ")
    }
}

//task2
print("\n\ntask2")
var text: String = "dragon,dilute,enthusiasm,salmon,fibre,bare,lodge,teacher,thread,warrant,brand,sunshine,shortage,issue,swipe,secretary,graduate,absorption,finished,redeem."
var count: Int = 0
var str = ""

func getLength(_ text: String) -> String{
    for index in text{
        if index != "," && index != "."{
            str += "\(index)"
            //print(index, terminator: "")
            count += 1
            //word += index
        }else{
            str += " - \(count) символов\n"
            //print(" - ", count, "символов")
            count = 0
        }
    }
    return str
}
print(getLength(text))

//extra
print("\nextra")
print("Enter your first number")
let num1: Int?
num1 = Int(readLine()!)
print("Enter your second number")
let num2: Int?
num2 = Int(readLine()!)
print("which operation")
let sign: String = readLine()!


func calc(_ number1: Int, _ number2: Int, _ sign: String) -> Int{
    var result: Int = 0
    if sign == "+"{
        result = number1 + number2
    }else if sign == "-"{
        result = number1 - number2
    }
    else if sign == "*"{
        result = number1 * number2
    }else if sign == "/"{
        result = number1 / number2
    }else if sign == "%"{
        result = number1 * number2 / 100
    }
    return result
}


print("\(num1!) \(sign) \(num2!) = ", calc(num1!, num2!, sign))
//--------------------------------------------------------------------

print("which operation:", terminator: " ")
let function: String = readLine()!
print("Enter your number", terminator: " ")
let num: Double?
num = Double(readLine()!)


func sin(_ x: Double) -> Double{
    return (4 * x * (180 - x )) / (40500 - x * (180 - x))
}
func cos(_ x: Double) -> Double{
    return sin(180 / 2 - x)
}

func trigonometry(_ function: String, _ number: Double) -> Double{
    var res: Double = 0
    if function == "sin"{
        res = sin(number)
    }else if function == "cos"{
        res = cos(number)
    }else if function == "tg"{
        res = sin(number) / cos(number)
    }else if function == "ctg"{
        res = cos(number) / sin(number)
    }
    return res
}
print("\(function) \(num!) = ", trigonometry(function, num!))


