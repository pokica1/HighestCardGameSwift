//
//  Card.swift
//  HighestCardGame
//
//  Created by user206660 on 10/23/21.
//

import Foundation

class Card {

    private let rank: Rank
    private let suit: Suit
    
    init(_ rank: Rank, of suit: Suit) {
        self.rank = rank
        self.suit = suit
    }
    
    func getRank() -> Rank {
        return rank
    }
    
    func getSuit() -> Suit {
        return suit
    }
    
    func compareRank (with otherCard: Card) -> Bool {
        return rank == otherCard.getRank()
    }
    
    func compareSuit(with otherCard: Card) -> Bool {
        return suit == otherCard.getSuit()
    }
    
    func describe() {
        print("card is ", self.getRank().rawValue, " of ", self.getSuit().rawValue)
    }
    
    func getImage() -> String {
        var image : String
        image = String(self.rank.rawValue) + self.suit.rawValue + ".png"
        return image
    }
    
}
