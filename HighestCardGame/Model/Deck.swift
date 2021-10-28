//
//  Deck.swift
//  HighestCardGame
//
//  Created by user206660 on 10/23/21.
//

import Foundation

class Deck {
    public var cards: [Card] = []
    //shuffle() - pre starting game - public
    init() {
        let ranks = [Rank.ace, Rank.two, Rank.three, Rank.four, Rank.five, Rank.six, Rank.seven, Rank.eight, Rank.nine, Rank.ten, Rank.jack, Rank.queen, Rank.king]
        let suits = [Suit.spades, Suit.hearts, Suit.diamonds, Suit.clubs]
        for suit in suits{
            for rank in ranks{
                let sign = getSymbol(suit)
                let label = getLabel(rank)
                self.cards.append(Card(rank, of: suit, with: sign, label: label))
            }
        }
    }
    func shuffle(){
        cards.shuffle()
    }
    func getCards(_ start: Int, _ end: Int) -> [Card]{
        var cardSet : [Card] = []
        for index in start...end{
            cardSet.append(cards[index])
        }
        return cardSet
    }
    func getSymbol(_ suit: Suit) -> Symbol {
        let symbol: Symbol
        switch(suit.rawValue){
        case "S":
            symbol = Symbol.spades
        case "D":
            symbol = Symbol.diamonds
        case "H":
            symbol = Symbol.hearts
        case "C":
            symbol = Symbol.clubs
        default:
            symbol = Symbol.hearts
        }
        return symbol
    }
    func getLabel(_ rank: Rank) -> RankLabel {
        let label: RankLabel
        switch(rank.rawValue){
        case 14:
            label = RankLabel.ace
        case 13:
            label = RankLabel.king
        case 12:
            label = RankLabel.queen
        case 11:
            label = RankLabel.jack
        case 10:
            label = RankLabel.ten
        case 9:
            label = RankLabel.nine
        case 8:
            label = RankLabel.eight
        case 7:
            label = RankLabel.seven
        case 6:
            label = RankLabel.six
        case 5:
            label = RankLabel.five
        case 4:
            label = RankLabel.four
        case 3:
            label = RankLabel.three
        case 2:
            label = RankLabel.two
        default:
            label = RankLabel.ace
        }
        return label
    }
}
