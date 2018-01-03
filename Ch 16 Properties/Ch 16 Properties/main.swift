//
//  main.swift
//  Ch 16 Properties
//
//  Created by Shawon Ashraf on 1/3/18.
//  Copyright © 2018 Shawon Ashraf. All rights reserved.
//

import Foundation


var myTown = Town()
//myTown.printDescription()

//myTown.increasePopulation(by: 1_00_000)
//myTown.printDescription()

var kaderyTheMegaZombie = Zombie()
kaderyTheMegaZombie.name = "==HumboldtFaggot=="
kaderyTheMegaZombie.town = myTown

kaderyTheMegaZombie.terrorizeTown()

let bGomao = kaderyTheMegaZombie.makeSpookySound()
print("\nZombie Kadery says: \(bGomao)\n")


kaderyTheMegaZombie.victimPool = 1_00_000
//myTown.printDescription()

let linkToKadery = "https://github.com/ikadery"
print("\nIf you have no idea who Kadery is, get him from here: \(linkToKadery)\n")
