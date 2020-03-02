//
//  ViewController.swift
//  Dicee
//
//  Created by Mohamed Abd el Aty on 2/4/20.
//  Copyright © 2020 Aty. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var arryDicee = ["dice1","dice2","dice3","dice4","dice5","dice6"]
    var randomDiceIndex1: Int = 0
     var randomDiceIndex2: Int = 0
    @IBOutlet weak var disImageView2: UIImageView!
    @IBOutlet weak var disImageView1: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateDiceImages()
        // Do any additional setup after loading the view.
    }

    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateDiceImages()
    }
    
    
    
    @IBAction func rollButtonPressed(_ sender: Any) {
        
       updateDiceImages()
    
    }
    
    
    
    func updateDiceImages() {
        randomDiceIndex1 = Int.random(in: 0 ... 5)
               randomDiceIndex2 = Int.random(in: 0 ... 5)
               disImageView1.image = UIImage(named: arryDicee[randomDiceIndex1])
               disImageView2.image = UIImage(named: arryDicee[randomDiceIndex2])
           
        
    }
    
}

