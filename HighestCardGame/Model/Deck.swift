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
                self.cards.append(Card(rank, of: suit))
            }
        }
    }
    func shuffle(){
        cards.shuffle()
    }
    func getCards(_ start: Int, _ end: Int) -> [Card]{
        var cardSet : [Card] = []
        var i: Int = start
        for card in cards {
            if(i>=start) && (i<=end){
                cardSet.append(card)
                i=i+1
            }
        }
        return cardSet
    }
}
