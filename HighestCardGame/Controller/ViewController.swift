//
//  ViewController.swift
//  HighestCardGame
//
//  Created by user206660 on 10/23/21.
//

import UIKit

class ViewController: UIViewController {
    
   
    public var game: Game = Game()
    
    @IBOutlet weak var userField: UILabel!
    
    @IBOutlet weak var computerField: UILabel!
    
    @IBOutlet weak var userCardNumber: UILabel!
    
    @IBOutlet weak var computerCardNumber: UILabel!
    
    
    @IBOutlet weak var userCardOutput: UIImageView!
    
    
    @IBOutlet weak var computerCardOutput: UIImageView!
    
    
    @IBOutlet weak var gameStatus: UILabel!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userCardOutput.image = UIImage(named:"blue_back.png")
        computerCardOutput.image = UIImage(named:"blue_back.png")
        
        game.start()

        print(self.game.deck.cards[1].getImage())
        print(self.game.deck.cards[2].getImage())
    }
    
    @IBAction func drawCard(_ sender: Any) {
        //userCardOutput.image = UIImage(named:game.deck.cards[1].getImage())
        //game.card1?.describe()
        //game.card2?.describe()
        //1. Play a Round (note a draw may have multiple rounds)
        //   self.game.playRound()
        //2. set images to card 1 and card 2 from game
          //  userCardOutput.image = UIImage(named:game.card1!.getImage())
           // computerCardOutput.image = UIImage(named:game.card2!.getImage())
        //3. update the won or lost label for the round
        
        //4. update the count label to reflect new count of cards in each hand
        //  }
    }



}

