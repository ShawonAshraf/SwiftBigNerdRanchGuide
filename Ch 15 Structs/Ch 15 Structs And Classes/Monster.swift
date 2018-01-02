//
//  Monster.swift
//  Ch 15 Structs
//
//  Created by Shawon Ashraf on 1/3/18.
//  Copyright © 2018 Shawon Ashraf. All rights reserved.
//

import Foundation

class Monster {
    var town: Town?
    var name = "Monster"
    
    func terrorizeTown() {
        if town != nil {
            print("\(name) is terrorizing a town.")
        } else {
            print("\(name) hasn't found a town to terrorize yet...")
        }
    }
    
    func makeSpookySound() -> String {
        return "Brains"
    }
}
