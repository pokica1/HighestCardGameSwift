//
//  Game.swift
//  HighestCardGame
//
//  Created by user206660 on 10/23/21.
//

import Foundation

class Game {
    
    public var players: [Player] = []
    public var deck: Deck = Deck()
    public var roundNumber = 0
    public var card1: Card?
    public var card2: Card?
    public var pool: [Card] = []
    func start() {
        self.players.append(Player("Computer"))
        self.players.append(Player("Person"))
        self.deck.shuffle()
        self.players[0].hand = deck.getCards(0,25)
        self.players[1].hand = deck.getCards(26,51)
        print(players[0].hand.count)
        print(players[1].hand.count)
    }
    func playRound(){
        self.card1 = players[0].hand[roundNumber]
        self.card2 = players[1].hand[roundNumber]
        let winner = self.compare(self.card1, self.card2)
        if(winner==0){
            giveCards(self.card1, self.card2,0)
        }else if(winner==1){
            giveCards(self.card1, self.card2,1)
        }else{ //draw
            //add cards to the Pool
        }
        self.roundNumber+=1
    }
    func isOver() -> Bool {
        return false
    }
    func compare(_ card1: Card!, _ card2: Card!) -> Int{
        //0 if card1 wins, 1 if card 2 winds, else return -1 for a draw
        return 0
    }
    func giveCards(_ card1: Card!, _ card2: Card!, _ winner: Int){
        
    } // takes 2 cards, adds them onto the players deck (at back of pack)
    
}
