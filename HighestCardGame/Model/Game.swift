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
    public var roundWinner :Int = 2
    public var isOver = false
    func start() {
        self.players.append(Player("User"))
        self.players.append(Player("Computer"))
        self.deck.shuffle()
        self.players[0].hand = deck.getCards(0,25)
        self.players[1].hand = deck.getCards(26,51)
    }
    func reset(){
        self.deck.shuffle()
        self.players[0].hand = deck.getCards(0,25)
        self.players[1].hand = deck.getCards(26,51)
        self.pool = []
        self.roundNumber = 0
        self.roundWinner = 2
        self.isOver = false
    }
    func playRound(){
        self.card1 = players[0].hand.removeFirst()
        self.card2 = players[1].hand.removeFirst()
        pool.append(card1!)
        pool.append(card2!)
        let winner = self.compare(self.card1, self.card2)
        if(winner==0){
            giveCardsFromPool(0)
            print("0 won")
        }else if(winner==1){
            giveCardsFromPool(1)
            print("1 won")
        }else{ //draw
            //do nothing
            print("Draw")
        }
        self.roundNumber+=1
        
    }
    func gameIsOver() -> Bool {
        if(self.roundNumber>=30){
            self.isOver = true
        }
        if(players[0].hand.count<=0){
            self.isOver = true
        }else if (players[1].hand.count<=0) {
            self.isOver = true
        }
        return self.isOver
    }
    func compare(_ card1: Card!, _ card2: Card!) -> Int{
        if(card1.getRank().rawValue > card2.getRank().rawValue){
            self.roundWinner = 0
            return 0
        }else if(card1.getRank().rawValue < card2.getRank().rawValue){
            self.roundWinner = 1
            return 1
        }
        self.roundWinner = -1
        return -1
    }
    func giveCardsFromPool( _ winner: Int){
        for card in self.pool{
            self.players[winner].hand.append(card)
        }
        self.pool = []
    }
}
