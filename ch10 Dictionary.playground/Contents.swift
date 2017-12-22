//: Playground - noun: a place where people can play

import Cocoa

// declaring dictionary
var dict1: Dictionary<String, Int> = [:]
var dict2 = Dictionary<String, Int>()
var dict3: [String:Int] = [:]
var dict4 = [String:Int]()

/*
 So you can either use (), in that case mention type after =
 else mention type in Swift style and init using [:]
 */

var movieRatings = [
    "The girl next door": 8, "মাটির ময়না": 10, "খোঁজ The Search": 10, "Star Wars: A new hope": 10,
    "The Godfather": 10, "Grave of the fireflies": 10
]

movieRatings.count
movieRatings["Pandorum"] = 7
movieRatings.count

// removing from dictionary
let removeKey = "খোঁজ The Search"
if let _ = movieRatings[removeKey] {
    movieRatings.removeValue(forKey: removeKey)
}
movieRatings


for key in movieRatings.keys {
    movieRatings[key]
}

// let dk = movieRatings.keys
// this doesn't work in playground but works fine in swift REPL. NOTE
// checked running via terminal, calls a native method that's why doesn't work with
// playground. (maybe?)

// dictionary keys as arrays
let keyArray = Array(movieRatings.keys)

// vaulues as arrays
var arrayDict: [String : [Int]] = [:]
arrayDict["r1"] = [1,2,3]
arrayDict["r2"] = [4,5,6]

arrayDict

// clearing dict
movieRatings =  [:]
arrayDict = [:]
