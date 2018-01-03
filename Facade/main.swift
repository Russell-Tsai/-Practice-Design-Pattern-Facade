//
//  main.swift
//  Facade
//
//  Created by APP Dimerco on 03/01/2018.
//  Copyright © 2018 APP Dimerco. All rights reserved.
//

import Foundation

//let map = TreasureMap()
//let ship = Ship()
//let member = Member()
//
//let treasureLocation = map.findTreasure(type: TreasureMap.Treausures.gold)
//
////convert from map to ship coordinates
//let sequence: [Character] = ["A","B","C","D","E","F","G"]
//let eastwestPos = sequence.index(after: treasureLocation.gridNumber)
//let shipTarget = Ship.ShipLocation(NorthSouth: Int(treasureLocation.gridNumber), EastWest: eastwestPos)
//
////relocate ship
//ship.moveToLocation(location: shipTarget) { (location) in
//    member.performAction(action: .digForGold, callback: { (prize) in
//        print("Get Prize: \(prize)")
//    })
//}
//------------------------- 以上整合進 StoneFacade ---------------------------------

let facade = StoneFacade()
let prize = facade.getTreasure(type: .gold)
print("Get Prize:\(prize)")
