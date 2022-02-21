//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    var player: AVAudioPlayer?
    
    @IBAction func keyPressed(_ sender: UIButton) {
        let pressedLetter : String? = sender.titleLabel?.text
        playSound(soundName: pressedLetter)
    }
    
    func playSound(soundName: String?) {
        guard soundName != nil else { return }
        guard let url = Bundle.main.url(forResource: soundName, withExtension: "wav") else { return }
        
        do {
            try AVAudioSession.sharedInstance().setCategory(AVAudioSession.Category.playback)
            try AVAudioSession.sharedInstance().setActive(true)
            
            player = try AVAudioPlayer(contentsOf: url)
            
            player?.play()
            
        } catch let error {
            print(error.localizedDescription)
        }
    }
    
    
}

