//
//  Player.swift
//  Colors
//
//  Created by Govinda Sharma on 2018-08-17.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

class Player{
    var name: String = ""
    var score: Int = 0
    
    init() {
        self.name = ""
        self.score = 0
    }
    
    init(name: String, score: Int) {
        self.name = name
        self.score = score
    }
}
