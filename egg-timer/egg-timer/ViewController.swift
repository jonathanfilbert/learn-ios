//
//  ViewController.swift
//  egg-timer
//
//  Created by jonathan.lisyanto on 27/12/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    let eggVariantsToMins: [String:Int] = [
        "Soft": 5,
        "Medium": 7,
        "Hard": 12
    ]
    
    @IBOutlet weak var titleText: UILabel!
    
    var timer = Timer()
    
    @IBOutlet weak var progressBar: UIProgressView!
    
    override func viewDidLoad() {
        titleText.text = "How do you like your eggs?"
        progressBar.progress = 0
    }
    
    @IBAction func handleEggSoft(_ sender: Any) {
        let mins = eggVariantsToMins["Soft"]!
        triggerCountdown(minutes: mins)
    }
    
    @IBAction func handleEggMedium(_ sender: Any) {
        let mins = eggVariantsToMins["Medium"]!
        triggerCountdown(minutes: mins)
    }
    
    @IBAction func handleEggHard(_ sender: Any) {
        let mins = eggVariantsToMins["Hard"]!
        triggerCountdown(minutes: mins)
    }
    
    func triggerCountdown(minutes: Int) {
        timer.invalidate()
        self.titleText.text = "Cooking Egg..."
        // Get the timer in seconds
        var secondsLeft = minutes * 1
        // Initiate a timer with 1 second interval
        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in
            // If the timer reaches 0, invalidate the timer and return
            if (secondsLeft == 0) {
                timer.invalidate()
                self.progressBar.progress = 0
                self.titleText.text = "Done!"
                return
            }
            // Else, decrement the seconds
            secondsLeft -= 1
            self.progressBar.progress = Float(minutes * 1 - secondsLeft) / Float(minutes * 1)
        }
    }
}
