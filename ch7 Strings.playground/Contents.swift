//: Playground - noun: a place where people can play

import Cocoa

//var playground = "Hello, Playground!"
//print("Length of the string is : \(playground.characters.count)")
//
//let startIndex = playground.startIndex
//let endIndex = playground.index(startIndex, offsetBy: 4)
//
//let indexRange = startIndex...endIndex
//print(playground[indexRange])


// bronze challenge

let str = "" // an empty string
let start = str.startIndex
let end = str.endIndex

if start == end {
    print("String is empty")
} else {
    print("String is not empty")
}

// also check via this

if str.characters.count == 0 {
    print("String is empty via char count")
} else {
    print("Nope")
}
