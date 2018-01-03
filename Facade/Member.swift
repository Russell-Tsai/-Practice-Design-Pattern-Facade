//
//  Member.swift
//  Facade
//
//  Created by APP Dimerco on 03/01/2018.
//  Copyright © 2018 APP Dimerco. All rights reserved.
//

import Foundation

class Member {
    
    enum Actions {
        case digForGold
        case digForSilver
        case digForBronze
    }
    
    func performAction(action: Actions, callback:(Int)->Void) {
        var prizeValue = 0
        switch action {
        case .digForGold:
            prizeValue = 5000
        case .digForSilver:
            prizeValue = 2000
        case .digForBronze:
            prizeValue = 1000
        }
        callback(prizeValue)
    }
}
