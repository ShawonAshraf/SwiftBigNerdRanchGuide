//: Playground - noun: a place where people can play

import Cocoa

var ar: [String] = []
ar.append("Boogeyman")
ar.append("12")
ar.append("Batman")
ar.append("Joker")
ar.append("Justice league")

var removeIndex = ar.index(of: "12")

if let index = removeIndex {
    ar.remove(at: index)
} else {
    print("String not in array")
}

ar
ar.count
var ranged = ar[0...3]

ar[0] = "UgaBugaMan"
ar


// an integer array
var intArray: [Int] = []

intArray.append(12)
intArray.append(-1)
intArray.append(100)
intArray.append(50)

let isInArray = intArray.contains(200)

if intArray.contains(-1), let index = intArray.index(of: -1) {
    let val = intArray[index]
}

