//
//  Player.swift
//  HighestCardGame
//
//  Created by user206660 on 10/23/21.
//

import Foundation

class Player {
    public var hand: [Card]
    public var name: String
    
    init (_ name: String){
        self.name = name
        self.hand = []
    }
}
