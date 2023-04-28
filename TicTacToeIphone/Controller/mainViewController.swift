//
//  mainViewController.swift
//  TicTacToeIphone
//
//  Created by Nihal Islam on 25/4/23.
//

import UIKit

class mainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func startButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "goToSetting", sender: self)
    }
    
    @IBAction func quitButtonPressed(_ sender: UIButton) {
        exit(0)
    }
}
