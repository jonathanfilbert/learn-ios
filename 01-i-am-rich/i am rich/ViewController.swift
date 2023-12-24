//
//  ViewController.swift
//  i am rich
//
//  Created by jonathan.lisyanto on 05/11/23.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func rollDice(_ sender: Any) {
        diceText.text = "2";
    }
    
    @IBOutlet weak var diceText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad();
    }
}
