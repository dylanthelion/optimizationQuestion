//: Playground - noun: a place where people can play

import UIKit

struct myStruct {
    let structInt : Int
    let structFloat : Float
    let structDouble : Double
}

let floatOne : Float = 10.0
let intOne : Int = 2
let structOne = myStruct(structInt: 3, structFloat: 33.0, structDouble: 333.0)


func myAssignmentExample() -> (Int, Float, String) {
    let baseIntStructCalculation = intOne + (Int(structOne.structDouble) / structOne.structInt)
    let baseIntCalculation = Int(floatOne) * baseIntStructCalculation
    return (baseIntCalculation, Float(baseIntCalculation), String(baseIntCalculation))
}

func myCalculatedExample() -> (Int, Float, String) {
    return (Int(floatOne) * (intOne + (Int(structOne.structDouble) / structOne.structInt)), floatOne * Float(intOne + (Int(structOne.structDouble) / structOne.structInt)), String(Int(floatOne) * (intOne + (Int(structOne.structDouble) / structOne.structInt))))
}

print(myAssignmentExample())
print(myCalculatedExample())