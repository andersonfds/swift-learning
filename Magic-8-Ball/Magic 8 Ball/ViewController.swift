//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Angela Yu on 14/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var magicBall: UIImageView!
    
    let ballArray : Array<UIImage> = [
        UIImage(imageLiteralResourceName: "ball1"),
        UIImage(imageLiteralResourceName: "ball2"),
        UIImage(imageLiteralResourceName: "ball3"),
        UIImage(imageLiteralResourceName: "ball4"),
        UIImage(imageLiteralResourceName: "ball5"),
    ]
    
    @IBAction func onAsk(_ sender: UIButton) {
        magicBall.image = ballArray.randomElement()
    }
}

