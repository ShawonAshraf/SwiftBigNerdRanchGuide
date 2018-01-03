//
//  Zombie.swift
//  Ch 15 Structs
//
//  Created by Shawon Ashraf on 1/3/18.
//  Copyright © 2018 Shawon Ashraf. All rights reserved.
//

import Foundation

class Zombie: Monster {
    var walksWithLimp = true
    
    final override func terrorizeTown() {
        town?.increasePopulation(by: -2000)
        super.terrorizeTown()
    }
    
    override func makeSpookySound() -> String {
        return "কি বি গমাসসো?"
    }
    
    deinit {
        print("Zombie named \(self.name) is longer terrorizing the town!")
    }
}
