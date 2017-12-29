//
//  Town.swift
//  Ch 15 Structs
//
//  Created by Shawon Ashraf on 12/30/17.
//  Copyright © 2017 Shawon Ashraf. All rights reserved.
//

import Foundation


struct Town {
    var population = 5_422
    var numberOfStoplights = 4
    
    func printDescription() {
        print("Population: \(myTown.population), number of stoplights: \(myTown.numberOfStoplights)")
    }
    
    mutating func increasePopulation(by amount: Int) {
        population += amount
    }
}

