//: Playground - noun: a place where people can play

import Cocoa

var errorCode: String?
errorCode = "404"

if errorCode != nil {
    // force unwrap
    print(errorCode!)
} else {
    print("Value is nil")
}

// optional binding
if let temp = errorCode {
    print(temp)
} else {
    print("There wasn't any value")
}

// multiple binding
if let temp = errorCode, let value = Int(temp) {
    print("\(temp) : \(value)")
}

// optional chaining
var errorDescription: String?
if let temp = errorCode, let value = Int(temp), value == 404 {
    errorDescription = "\(value + 200) : resource was not found"
} else {
    print("nil optional encountered")
}

var upCaseErrorDescription = errorDescription?.uppercased()
upCaseErrorDescription?.append(", PLEASE TRY AGAIN LATER.")
print(upCaseErrorDescription!)



// nil coalescing operator
var newOptional: String?
let description = newOptional ?? "No value inside"
print(description)

// bronze challenge
var numberOfChildren: Int?
let num = numberOfChildren ?? 0
