//: Playground - noun: a place where people can play

import Cocoa

// declaring set
var set1 = Set<Int>()

set1.insert(45)
set1.insert(100)
set1.insert(-22)
set1.insert(77)

// union

var even: [Int] = []
var odd: [Int] = []

for i in 1...100 {
    // even numbers
    if i % 2 == 0 {
        even.append(i)
    } else {
        odd.append(i)
    }
}

var evenSet = Set(even)
var oddSet = Set(odd)

var unionSet = evenSet.union(oddSet)
//print(unionSet)

// intersection

var intersectionSet = unionSet.intersection(oddSet)
print(intersectionSet)

intersectionSet.count

// disjoint

let isDisjoint = oddSet.isDisjoint(with: evenSet)

