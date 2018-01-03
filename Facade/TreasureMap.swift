//
//  TreasureMap.swift
//  Facade
//
//  Created by APP Dimerco on 03/01/2018.
//  Copyright © 2018 APP Dimerco. All rights reserved.
//

import Foundation

class TreasureMap {
    
    enum Treausures {
        case gold
        case silver
        case bronze
    }
    
    struct MapLocation {
        let gridLetter: Character
        let gridNumber: Int
    }
    
    func findTreasure(type: Treausures) -> MapLocation {
        switch type {
        case.gold:
            return MapLocation(gridLetter: "A", gridNumber: 0)
        case .silver:
            return MapLocation(gridLetter: "F", gridNumber: 17)
        case .bronze:
            return MapLocation(gridLetter: "O", gridNumber: 40)
        }
    }
}
