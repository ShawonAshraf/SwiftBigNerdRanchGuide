//: Playground - noun: a place where people can play

import Cocoa

enum TextAlignment: Int {
    case left = 100
    case right = 20
    case center = 45
}

var alignment = TextAlignment.center
alignment = .right

if alignment == .right {
    print("Right Aligned!")
}

alignment.rawValue

func convertToEnum(rawValue: Int) -> TextAlignment? {
    if let alignment = TextAlignment(rawValue: rawValue) {
        print("Successfully converted \(rawValue) to enum")
        return alignment
    }
    else {
        print("Failed to convert \(rawValue) to enum")
        return nil
    }
}

var newAlignment = convertToEnum(rawValue: 200)


// enums with methods?

enum Lighbulb {
    case on
    case off
    
    func surfaceTemperature(forAmbientTemperature ambient: Double) -> Double {
        switch self {
        case .on:
            return ambient + 150.0
        case .off:
            return ambient
        }
    }
    
    // without adding mutating you can't change anything via self
    mutating func toggle() {
        switch self {
        case .on:
            self = .off
        case .off:
            self = .off
        }
    }
}

var bulb = Lighbulb.on
var bulbTemperature = bulb.surfaceTemperature(forAmbientTemperature: 77.0)
print("The bulbs temperature is \(bulbTemperature)")

bulb.toggle()
bulbTemperature = bulb.surfaceTemperature(forAmbientTemperature: 77.0)
print("The bulbs temperature is \(bulbTemperature)")


// recusrive enums

indirect enum FamilyTree {
    case noKnownParents
    case oneKnownParent(name: String, ancestors: FamilyTree)
    case twoKnownParents(fathername: String, fatherAncestors: FamilyTree,
        motherName:String, motherAncestor: FamilyTree)
}

let fredsAncestors = FamilyTree.twoKnownParents(
    fathername: "Fred Sr.",
    fatherAncestors: .oneKnownParent(name: "Beth", ancestors: .noKnownParents),
    motherName: "Marsha", motherAncestor: .noKnownParents
)

