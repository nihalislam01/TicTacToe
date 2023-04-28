//
//  settingViewController.swift.
//  TicTacToeIphone
//
//  Created by Nihal Islam on 25/4/23.
//

import UIKit

class settingViewController: UIViewController, UITextFieldDelegate {
    
    var playerOne: String?
    var playerTwo: String?
    var gamePoint: Int?
    
    @IBOutlet weak var sliderLabel: UILabel!
    @IBOutlet weak var playerOneName: UITextField!
    @IBOutlet weak var playerTwoName: UITextField!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        let tap = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))

        view.addGestureRecognizer(tap)
        
        self.navigationController?.navigationBar.tintColor = UIColor.white
        
        playerOneName.delegate = self
        playerTwoName.delegate = self
        
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        return true
    }
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        if (textField.text != nil) {
            if (textField == playerOneName) {
                playerOne = textField.text!
            } else {
                playerTwo = textField.text!
            }
        }
    }
    
    @IBAction func setButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "goToGame", sender: self)
    }
    
    @IBAction func setValue(_ sender: UISlider) {
        
        if (Int(sender.value)%2==1) {
            sender.setValue(sender.value, animated:false)
            sliderLabel.text = String(Int(sender.value))
            gamePoint = Int(sender.value)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! gameViewController
        destinationVC.gameBrain.playerOne = playerOne!
        destinationVC.gameBrain.playerTwo = playerTwo!
        destinationVC.gameBrain.gamePoint = gamePoint!
    }
}
