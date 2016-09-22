//
//  GlowAct.swift
//  HellGlow World
//
//  Created by Tom Bakker on 01-09-16.
//  Copyright © 2016 Fontys. All rights reserved.
//

import Foundation

class GlowAct {
    //Properties and methods
    var name: String?
    var rating: Int?
    var startTime: String?
    
    func showInfo(){
        print("This act is called \(name) and starts at \(startTime). It has an average rating of \(rating)")
    }
}