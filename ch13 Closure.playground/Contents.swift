//: Playground - noun: a place where people can play

import Cocoa

var volunteerCounts = [1,3,40,32,2,53,77,13]

//func sortAscending(_ i:Int, _ j:Int) -> Bool {
//    return i < j
//}
// volunteerCounts.sorted(by: sortAscending)

// same thing,using closure expression

volunteerCounts.sorted(by: {
    (i: Int, j: Int) -> Bool in return i < j
})

// even shorter
volunteerCounts.sorted(by: {
    i,j in i > j
})

// even more, using shorthand args
volunteerCounts = [1,3,40,32,2,53,77,13]
let volunteersSorted = volunteerCounts.sorted(by: { $0 > $1 })
volunteersSorted

// go slimmer! Aaaaaarghhhh!
let sorted2 = volunteerCounts.sorted { $0 < $1}
sorted2

// shorthand args don't change the original array as it seems
// brevity is the sould of the wit - nice words!

//func makeTownGrand() -> (Int, Int) -> Int {
//    func buildRoads(byAddingLights lights: Int,
//                    toExistingLights existingLights: Int) -> Int {
//        return lights + existingLights
//    }
//    return buildRoads
//}
//
//var stopLights = 4
//let newTownPlan = makeTownGrand()
//stopLights = newTownPlan(4, stopLights)
//print("Knowhere has \(stopLights) stoplights.")

// in a new manner, sending functions as param

func makeTownGrand( withBudget budget: Int,
                   condition: (Int) -> Bool ) -> ((Int, Int) -> Int)? {
    if condition(budget) {
        func buildRoads(byAddingLights lights: Int,
                        toExistingLights existingLights: Int) -> Int {
            return lights + existingLights
        }
        return buildRoads
    } else {
        return nil
    }
}

func evaluate(budget: Int) -> Bool {
    return budget > 10_000
}

var stopLights = 4
if let newTownPlan = makeTownGrand(withBudget: 1_000, condition: evaluate) {
    stopLights = newTownPlan(4, stopLights)
}

print("Knowhere has \(stopLights) stoplights")


// same thing in a different manner, using closures
if let newTownPlan2 = makeTownGrand(withBudget: 1_00_000, condition: {budget in budget > 10_000}) {
    stopLights = newTownPlan2(4, stopLights)
}
print("Knowhere has \(stopLights) stoplights")


// example of filter()
let filteredVolunteers = volunteerCounts.filter({ i in i % 2 == 1 }).sorted(by: { i,j in i < j })
print(filteredVolunteers)

// example of reduce()
let totalVolunteers = volunteerCounts.reduce(0, { i,j in i + j })
print(totalVolunteers)

// example of map
let pp = [2048, 1024, 512]
let ppMapped = pp.map({ i in i / 4 }) // divide everything by 4
print(ppMapped)
