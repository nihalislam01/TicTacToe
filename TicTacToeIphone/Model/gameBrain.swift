//
//  gameBrain.swift
//  TicTacToeIphone
//
//  Created by Nihal Islam on 21/4/23.
//

import Foundation
import UIKit

struct GameBrain {
    var pressed = 0
    var signs = [ "Circle" , "Cross" ]
    var board = [0,0,0,0,0,0,0,0,0]
    var winBool = true
    var circleBool = false
    var crossBool = false
    var cLCount = 0
    var crLCount = 0
    var gamePoint = 7
    var playerOne = ""
    var playerTwo = ""
    var firstPlayerTurn = 0
    
    
    mutating func showSigns(_ cube: UIImageView, _ value: Int, _ label: UILabel){
        if (cube.image == nil && winBool) {
            cube.image = UIImage(imageLiteralResourceName: signs[pressed%2])
            board[value] = (pressed%2)+1
            checkWinning()
            if (winBool == false) {
                label.text = nil
            } else if (pressed%2 == 1) {
                label.text = "\(playerOne)'s Turn"
            } else if (pressed%2 == 0) {
                label.text = "\(playerTwo)'s Turn"
            }
            pressed += 1
        }
    }
    
    mutating func checkWinning() {
        if (board[0]==1 && board[1]==1 && board[2]==1) {
            winBool = false
            circleBool = true

        } else if (board[3]==1 && board[4]==1 && board[5]==1){
            winBool = false
            circleBool = true
        } else if (board[6]==1 && board[7]==1 && board[8]==1){
            winBool = false
            circleBool = true

        } else if (board[0]==1 && board[3]==1 && board[6]==1) {
            winBool = false
            circleBool = true

        } else if (board[1]==1 && board[4]==1 && board[7]==1) {
            winBool = false
            circleBool = true

        } else if (board[2]==1 && board[5]==1 && board[8]==1) {
            winBool = false
            circleBool = true

        } else if (board[0]==1 && board[4]==1 && board[8]==1) {
            winBool = false
            circleBool = true
        } else if (board[2]==1 && board[4]==1 && board[6]==1) {
            winBool = false
            circleBool = true

        } else if (board[0]==2 && board[1]==2 && board[2]==2) {
            winBool = false
            crossBool = true

        } else if (board[3]==2 && board[4]==2 && board[5]==2){
            winBool = false
            crossBool = true
        } else if (board[6]==2 && board[7]==2 && board[8]==2){
            winBool = false
            crossBool = true
 
        } else if (board[0]==2 && board[3]==2 && board[6]==2) {
            winBool = false
            crossBool = true
          
        } else if (board[1]==2 && board[4]==2 && board[7]==2) {
            winBool = false
            crossBool = true
           
        } else if (board[2]==2 && board[5]==2 && board[8]==2) {
            winBool = false
            crossBool = true
        } else if (board[0]==2 && board[4]==2 && board[8]==2) {
            winBool = false
            crossBool = true
        } else if (board[2]==2 && board[4]==2 && board[6]==2) {
            winBool = false
            crossBool = true
        }
    }
    
    mutating func makeStatement(_ label: UILabel, _ button: UIButton, _ circleLabel: UILabel, _ crossLabel: UILabel) {
        if (circleBool){
            cLCount += 1
            circleLabel.text = "\(playerOne):\(cLCount)"
            if (cLCount==gamePoint) {
                label.text = "\(playerOne) Won!"
                button.setTitle("Play again", for: .normal)
            } else {
                button.setTitle("Next Round", for: .normal)
            }
            button.backgroundColor = UIColor(red: CGFloat(58/255.0), green: CGFloat(90/255.0), blue: CGFloat(64/255.0), alpha: CGFloat(1.0))
        } else if (crossBool) {
            crLCount += 1
            crossLabel.text = "\(playerTwo):\(crLCount)"
            if (crLCount==gamePoint) {
                label.text = "\(playerTwo) Won!"
                button.setTitle("Play again", for: .normal)
            } else {
                button.setTitle("Next Round", for: .normal)
            }
            button.backgroundColor = UIColor(red: CGFloat(58/255.0), green: CGFloat(90/255.0), blue: CGFloat(64/255.0), alpha: CGFloat(1.0))
        } else if (firstPlayerTurn==0 && pressed==9) {
            label.text = "Draw!"
            button.setTitle("Next Round", for: .normal)
            button.backgroundColor = UIColor(red: CGFloat(58/255.0), green: CGFloat(90/255.0), blue: CGFloat(64/255.0), alpha: CGFloat(1.0))
        } else if (firstPlayerTurn==1 && pressed==10) {
            label.text = "Draw!"
            button.setTitle("Next Round", for: .normal)
            button.backgroundColor = UIColor(red: CGFloat(58/255.0), green: CGFloat(90/255.0), blue: CGFloat(64/255.0), alpha: CGFloat(1.0))
        }
    }
    
    mutating func resetBoard(_ label: UILabel, _ button: UIButton, _ circleLabel: UILabel, _ crossLabel: UILabel) {
        board = [0,0,0,0,0,0,0,0,0]
        winBool = true
        circleBool = false
        crossBool = false
        if (firstPlayerTurn==0) {
            label.text = "\(playerTwo)'s Turn"
            pressed = 1
            firstPlayerTurn = 1
        } else {
            label.text = "\(playerOne)'s Turn"
            pressed = 0
            firstPlayerTurn = 0
        }
        button.setTitle("", for: .normal)
        button.backgroundColor = UIColor(red: CGFloat(58/255.0), green: CGFloat(90/255.0), blue: CGFloat(64/255.0), alpha: CGFloat(0.0))
        if (cLCount==gamePoint || crLCount==gamePoint) {
            cLCount = 0
            crLCount = 0
            circleLabel.text = "\(playerOne):\(cLCount)"
            crossLabel.text = "\(playerTwo):\(crLCount)"
        }
    }
}
