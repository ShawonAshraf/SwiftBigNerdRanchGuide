//
//  main.swift
//  Ch 15 Structs
//
//  Created by Shawon Ashraf on 12/30/17.
//  Copyright © 2017 Shawon Ashraf. All rights reserved.
//

import Foundation

var myTown = Town()
//myTown.printDescription()

myTown.increasePopulation(by: 1_000)
myTown.printDescription()

let kaderyTheZombie = Zombie()

kaderyTheZombie.town = myTown
kaderyTheZombie.name = "==Ivan Kadery the mega zombie=="

kaderyTheZombie.terrorizeTown()
kaderyTheZombie.town?.printDescription()

let spookeySound = kaderyTheZombie.makeSpookySound()
print(spookeySound)

