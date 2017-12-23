//: Playground - noun: a place where people can play

import Cocoa

// using external parameter
func printPersonalGreeting(to name: String) {
    print("Hello \(name), welcome to this playground!")
}

let name = "অনন্ত জলিল"
printPersonalGreeting(to: name)


// variadic params or variable length params
func printNumbers(numbers n: Int...) {
    for i in n {
        print("\(i)")
    }
}

// printNumbers(numbers: 1,2,3,4)

// in put params : more like references
func swapNumbers(a: inout Int, b: inout Int) {
    var temp = a
    a = b
    b = temp
}

var a = 12, b = 100
print("Before call : a = \(a) and b = \(b)")
swapNumbers(a: &a, b: &b)
print("After call : a = \(a) and b = \(b)")

// a simple factorial call => recursive
func factorial(of n:Int) -> Int {
    if n < 2 {
        return n
    } else {
        return n * factorial(of: n - 1)
    }
}
var n = 20
var fac = factorial(of: n)

// why not fibonacci?
func fibonacci(n:Int) -> Int {
    if n < 2 {
        return n
    } else {
        return fibonacci(n: n - 1) + fibonacci(n: n - 2)
    }
}

func fibonacciTill(_ n:Int) -> [Int] {
    var fibs: [Int] = []
    for i in 0...n {
        let fib = fibonacci(n: i)
        fibs.append(fib)
    }
    
    return fibs
}

var fibs = fibonacciTill(20)
print(fibs)
