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
    private let symbol: Symbol
    private let label: RankLabel
    
    init(_ rank: Rank, of suit: Suit, with symbol: Symbol, label: RankLabel) {
        self.rank = rank
        self.suit = suit
        self.symbol = symbol
        self.label = label
    }
    
    func getRank() -> Rank {
        return rank
    }
    
    func getSuit() -> Suit {
        return suit
    }
    func getSymbol() -> Symbol {
        return symbol
    }
    func getLabel() -> RankLabel {
        return label
    }
    
    func compareRank (with otherCard: Card) -> Bool {
        return rank == otherCard.getRank()
    }
    
    func compareSuit(with otherCard: Card) -> Bool {
        return suit == otherCard.getSuit()
    }
    
    func describe() {
        print("card is ", self.getRank().rawValue, " of ", self.getSuit().rawValue, " with sign ", self.getSymbol().rawValue, " and label ", self.getLabel().rawValue)
    }
    func describeShort() -> String {
        let short: String = self.getLabel().rawValue + "" + self.getSymbol().rawValue
        return short
    }
    
    func getImage() -> String {
        var image : String
        image = String(self.rank.rawValue) + self.suit.rawValue + ".png"
        return image
    }
    
}
