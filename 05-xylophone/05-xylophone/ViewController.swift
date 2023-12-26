//
//  ViewController.swift
//  05-xylophone
//
//  Created by jonathan.lisyanto on 24/12/23.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer?
    
    @IBAction func handlePressC(_ sender: UIButton) {
        Task { @MainActor in
            // Boss Challenge -> Dim the button for 0.2 seconds
            await dimButton(btn: sender)
            let note = sender.titleLabel?.text ?? "C"
                .uppercased()
            playSound(note: note)
        }
    }
    
    func dimButton(btn: UIButton) async {
        // dim the button opacity by 0.5 seconds
        btn.alpha  = 0.5
        do {
            try await Task.sleep(nanoseconds: 200_000_000)
        }
        catch {}
        btn.alpha = 1
    }
    
    func playSound(note:String) {
        guard let url = Bundle.main.url(forResource: note, withExtension: "wav") else { return }

        do {
            try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
            try AVAudioSession.sharedInstance().setActive(true)

            player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.wav.rawValue)

            guard let player = player else { return }

            player.play()

        } catch let error {
            print(error.localizedDescription)
        }
    }
}
