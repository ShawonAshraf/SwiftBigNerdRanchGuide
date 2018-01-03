//
//  Town.swift
//  Ch 15 Structs
//
//  Created by Shawon Ashraf on 12/30/17.
//  Copyright © 2017 Shawon Ashraf. All rights reserved.
//

import Foundation


class Town {
    var population = 5_422 {
        didSet(oldPopulation) {
            print("The population has changed to \(population) from \(oldPopulation)")
        }
    }
    var numberOfStoplights = 4
    
    func printDescription() {
        print("Population: \(self.population), number of stoplights: \(self.numberOfStoplights)")
    }
    
    func increasePopulation(by amount: Int) {
        population += amount
    }
}

