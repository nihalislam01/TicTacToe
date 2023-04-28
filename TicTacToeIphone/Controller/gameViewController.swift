//
//  ViewController.swift
//  TicTacToeIphone
//
//  Created by Nihal Islam on 16/4/23.
//

import UIKit

class gameViewController: UIViewController {
    
    @IBOutlet weak var iOneOne: UIImageView!
    @IBOutlet weak var iOneTwo: UIImageView!
    @IBOutlet weak var iOneThree: UIImageView!
    @IBOutlet weak var iTwoOne: UIImageView!
    @IBOutlet weak var iTwoTwo: UIImageView!
    @IBOutlet weak var iTwoThree: UIImageView!
    @IBOutlet weak var iThreeOne: UIImageView!
    @IBOutlet weak var iThreeTwo: UIImageView!
    @IBOutlet weak var iThreeThree: UIImageView!
    @IBOutlet weak var statement: UILabel!
    @IBOutlet weak var resetButton: UIButton!
    @IBOutlet weak var circleLabel: UILabel!
    @IBOutlet weak var crossLabel: UILabel!
    
    var gameBrain = GameBrain()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.navigationController?.navigationBar.tintColor = UIColor.white
        
        circleLabel.text = "\(gameBrain.playerOne):0"
        crossLabel.text = "\(gameBrain.playerTwo):0"
        
        if (gameBrain.pressed%2 == 0) {
            statement.text = "\(gameBrain.playerOne)'s Turn"
        } else {
            statement.text = "\(gameBrain.playerTwo)'s Turn"
        }
        
    }
    
    @IBAction func bOneOne(_ sender: UIButton) {
        gameBrain.showSigns(iOneOne, 0, statement)
        gameBrain.makeStatement(statement, resetButton, circleLabel, crossLabel)
        if (gameBrain.circleBool || gameBrain.crossBool) {
            gameBrain.circleBool = false
            gameBrain.crossBool = false
        }
    }
    
    @IBAction func bOneTwo(_ sender: UIButton) {
        gameBrain.showSigns(iOneTwo, 1, statement)
        gameBrain.makeStatement(statement, resetButton, circleLabel, crossLabel)
        if (gameBrain.circleBool || gameBrain.crossBool) {
            gameBrain.circleBool = false
            gameBrain.crossBool = false
        }
    }
    
    @IBAction func bOneThree(_ sender: UIButton) {
        gameBrain.showSigns(iOneThree, 2, statement)
        gameBrain.makeStatement(statement, resetButton, circleLabel, crossLabel)
        if (gameBrain.circleBool || gameBrain.crossBool) {
            gameBrain.circleBool = false
            gameBrain.crossBool = false
        }
    }
    
    @IBAction func bTwoOne(_ sender: UIButton) {
        gameBrain.showSigns(iTwoOne, 3, statement)
        gameBrain.makeStatement(statement, resetButton, circleLabel, crossLabel)
        if (gameBrain.circleBool || gameBrain.crossBool) {
            gameBrain.circleBool = false
            gameBrain.crossBool = false
        }
    }
    
    @IBAction func bTwoTwo(_ sender: UIButton) {
        gameBrain.showSigns(iTwoTwo, 4, statement)
        gameBrain.makeStatement(statement, resetButton, circleLabel, crossLabel)
        if (gameBrain.circleBool || gameBrain.crossBool) {
            gameBrain.circleBool = false
            gameBrain.crossBool = false
        }
    }
    
    @IBAction func bTwoThree(_ sender: UIButton) {
        gameBrain.showSigns(iTwoThree, 5, statement)
        gameBrain.makeStatement(statement, resetButton, circleLabel, crossLabel)
        if (gameBrain.circleBool || gameBrain.crossBool) {
            gameBrain.circleBool = false
            gameBrain.crossBool = false
        }
    }
    
    @IBAction func bThreeOne(_ sender: UIButton) {
        gameBrain.showSigns(iThreeOne, 6, statement)
        gameBrain.makeStatement(statement, resetButton, circleLabel, crossLabel)
        if (gameBrain.circleBool || gameBrain.crossBool) {
            gameBrain.circleBool = false
            gameBrain.crossBool = false
        }
    }
    
    @IBAction func bThreeTwo(_ sender: UIButton) {
        gameBrain.showSigns(iThreeTwo, 7, statement)
        gameBrain.makeStatement(statement, resetButton, circleLabel, crossLabel)
        if (gameBrain.circleBool || gameBrain.crossBool) {
            gameBrain.circleBool = false
            gameBrain.crossBool = false
        }
    }
    
    @IBAction func bThreeThree(_ sender: UIButton) {
        gameBrain.showSigns(iThreeThree, 8, statement)
        gameBrain.makeStatement(statement, resetButton, circleLabel, crossLabel)
        if (gameBrain.circleBool || gameBrain.crossBool) {
            gameBrain.circleBool = false
            gameBrain.crossBool = false
        }
    }
    
    
    @IBAction func resetButtonPressed(_ sender: UIButton) {
        iOneOne.image = nil
        iOneTwo.image = nil
        iOneThree.image = nil
        iTwoOne.image = nil
        iTwoTwo.image = nil
        iTwoThree.image = nil
        iThreeOne.image = nil
        iThreeTwo.image = nil
        iThreeThree.image = nil
        gameBrain.resetBoard(statement, resetButton, circleLabel, crossLabel)
    }
    
}

