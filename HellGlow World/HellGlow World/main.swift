//
//  main.swift
//  HellGlow World
//
//  Created by Tom Bakker on 01-09-16.
//  Copyright © 2016 Fontys. All rights reserved.
//

import Foundation

//New Act
var blueLightAct = GlowAct()
blueLightAct.name = "The Bluelight Act"
blueLightAct.rating = 8
blueLightAct.startTime = "22:20"

//City 1
var eindhoven = City(name: "Eindhoven", population: 20000)

//Append the blueLightAct to the Acts in Eindhoven
eindhoven.glowActs.append(blueLightAct)

//Display the data
eindhoven.showInfo()
blueLightAct.showInfo()


