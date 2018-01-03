//
//  Ship.swift
//  Facade
//
//  Created by APP Dimerco on 03/01/2018.
//  Copyright © 2018 APP Dimerco. All rights reserved.
//

import Foundation

class Ship {
    
    struct ShipLocation {
        let NorthSouth: Int
        let EastWest: Int
    }
    
    var currentPosition: ShipLocation
    
    init() {
        currentPosition = ShipLocation(NorthSouth: 20, EastWest: 20)
    }
    
    func moveToLocation(location: ShipLocation, callback:(ShipLocation) -> Void) {
        currentPosition = location
        callback(currentPosition)
    }
}
