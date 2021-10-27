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
    }
    
    @IBAction func drawCard(_ sender: Any) {
        //1. Play a Round (note a draw may have multiple rounds)
           self.game.playRound()
        //2. set images to card 1 and card 2 from game
            userCardOutput.image = UIImage(named:game.card1!.getImage())
            computerCardOutput.image = UIImage(named:game.card2!.getImage())
        //3. update the won or lost label for the round
        gameStatus.text = self.game.players[self.game.roundWinner].name
        //4. update the count label to reflect new count of cards in each hand
        //  }
    }



}

