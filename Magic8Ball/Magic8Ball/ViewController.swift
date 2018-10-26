//
//  ViewController.swift
//  Magic8Ball
//
//  Created by David E Bratton on 10/26/18.
//  Copyright © 2018 David Bratton. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomNumber:Int = 0
    var magicBallArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]

    @IBOutlet weak var backgroundImageView: UIImageView!
    @IBOutlet weak var magicBallImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getMagicBall()
    }
    
    func getMagicBall() {
        randomNumber = Int.random(in: 0 ... 4)
        magicBallImageView.image = UIImage(named: magicBallArray[randomNumber])
        print("Number: \(randomNumber), Ball: \(magicBallArray[randomNumber])")
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        getMagicBall()
    }

    @IBAction func askButtonPressed(_ sender: Any) {
        getMagicBall()
    }
    
}

