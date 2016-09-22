//
//  City.swift
//  HellGlow World
//
//  Created by Tom Bakker on 01-09-16.
//  Copyright © 2016 Fontys. All rights reserved.
//

import Foundation

class City{
    //Properties and methods
    var name = ""
    var population = 0
    var glowActs: [GlowAct] = []
    
    init (name: String, population: Int){
        self.name = name
        self.population = population
    }
    
    func showInfo(){
        print("In the city of \(name) there are currently living \(population) people. This festival has \(glowActs.count) act(s)")
    }
}