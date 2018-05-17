//
//  ViewController.swift
//  Dicee
//
//  Created by Biraj on 2/27/18.
//  Copyright © 2018 Biraj. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var randomDiceIndex1 : Int = 0
    var randomDiceIndex2 : Int = 0
    
    @IBOutlet weak var diceImage1: UIImageView!
    @IBOutlet weak var diceImage2: UIImageView!
    
    let diceArray = ["dice1","dice2","dice3","dice4","dice5","dice6"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateDiceImages()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onRollTouch(_ sender: UIButton) {
            updateDiceImages()
    }
    
    func updateDiceImages() {
        randomDiceIndex1 = Int (arc4random_uniform(6))
        randomDiceIndex2 = Int (arc4random_uniform(6))
        
        diceImage1.image = UIImage(named: diceArray[randomDiceIndex1])
        diceImage2.image = UIImage(named: diceArray[randomDiceIndex2])
        
    }
}

