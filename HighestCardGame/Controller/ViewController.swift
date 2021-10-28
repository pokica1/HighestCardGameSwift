//
//  ViewController.swift
//  HighestCardGame
//
//  Created by user206660 on 10/23/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    @IBOutlet weak var ResultsTable: UITableView!
    var names = ["John","Jane","Joe"]
    var summaries = [""]
    
    public var game: Game = Game()
    
    @IBOutlet weak var startGame: UIButton!
    @IBOutlet weak var userField: UILabel!
    @IBOutlet weak var computerField: UILabel!
    @IBOutlet weak var userCardNumber: UILabel!
    @IBOutlet weak var computerCardNumber: UILabel!
    @IBOutlet weak var userCardOutput: UIImageView!
    @IBOutlet weak var computerCardOutput: UIImageView!
    @IBOutlet weak var gameStatus: UILabel!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        ResultsTable.delegate = self
        ResultsTable.dataSource = self
        userCardOutput.image = UIImage(named:"blue_back.png")
        computerCardOutput.image = UIImage(named:"blue_back.png")
        gameStatus.text=""
        game.start()
    }
    
    @IBAction func drawCard(_ sender: Any) {
        let summary : String
        //1. Play a Round (note a draw may have multiple rounds)
           self.game.playRound()
        //2. Set images to card 1 and card 2 from game
            userCardOutput.image = UIImage(named:game.card1!.getImage())
            computerCardOutput.image = UIImage(named:game.card2!.getImage())
        //3. Prepare the Text Labels
        if (self.game.roundWinner != -1) { // if it's draw display a different message
            gameStatus.text = self.game.players[self.game.roundWinner].name + " won the round"
            summary = "U: " + self.game.card1!.describeShort() + " vs " + " C: " + self.game.card2!.describeShort() + " Winner: " + self.game.players[self.game.roundWinner].name
        }else{
            gameStatus.text = "It's a draw!"
            summary = "U: " + self.game.card1!.describeShort() + " vs " + " C: " + self.game.card2!.describeShort() + " Draw"
        }
        //4. update the count label to reflect new count of cards in each hand
        //
        //5. Add the result to the table.
        summaries.append(summary)
        ResultsTable.reloadData()
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath)-> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "Game") {
            if let label = cell.textLabel {
                label.text = self.summaries[indexPath.item]
            }
            return cell
    }
        return UITableViewCell()
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.summaries.count
    }



}

