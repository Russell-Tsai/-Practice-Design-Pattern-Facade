//
//  StoneFacade.swift
//  Facade
//
//  Created by APP Dimerco on 03/01/2018.
//  Copyright © 2018 APP Dimerco. All rights reserved.
//

import Foundation

enum TreasureTypes{
    case gold
    case silver
    case bronze
}

class StoneFacade {
    
    private let map = TreasureMap()
    private let ship = Ship()
    private let memeber = Member()
    
    func getTreasure(type: TreasureTypes) -> Int {
        var prizeAmount = 0
        var treasureMapType: TreasureMap.Treausures
        var memberActionType: Member.Actions
        
        switch type {
        case .gold:
            treasureMapType = .gold
            memberActionType = .digForGold
        case .silver:
            treasureMapType = .silver
            memberActionType = .digForSilver
        case .bronze:
            treasureMapType = .bronze
            memberActionType = .digForBronze
        }
        
        let treasureLocation = map.findTreasure(type: treasureMapType)
        
        //convert from map to ship coordinates
        let sequence: [Character] = ["A","B","C","D","E","F","G"]
        let eastwestPos = sequence.index(after: treasureLocation.gridNumber)
        let shipTarget = Ship.ShipLocation(NorthSouth: Int(treasureLocation.gridNumber), EastWest: eastwestPos)
        
        //relocate ship
        ship.moveToLocation(location: shipTarget) { (location) in
            member.performAction(action: memberActionType, callback: { (prize) in
                prizeAmount = prize
            })
        }
        
        return prizeAmount
    }
}
