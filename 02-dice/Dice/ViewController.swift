//
//  ViewController.swift
//  Dice
//
//  Created by jonathan.lisyanto on 20/12/23.
//

import UIKit

class ViewController: UIViewController {
    
    let diceNumbers = [1,2,3,4,5,6];
    
    @IBOutlet weak var diceText1: UILabel!
    
    @IBOutlet weak var diceText2: UILabel!
    
    @IBAction func rollDice(_ sender: Any) {
        diceText1.text = String(diceNumbers.randomElement() ?? 0);
        diceText2.text = String(diceNumbers.randomElement() ?? 0);
    }
    
    override func viewDidLoad() {
        super.viewDidLoad();
    }
}
