//
//  ViewController.swift
//  Dicee
//
//  Created by Sanil Sarathe on 24/11/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var diceImageViewFirst: UIImageView!
    @IBOutlet weak var diceImageViewSecond: UIImageView!
    
    var diceFirst = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    var count = 1
    var indexSecond = 5
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func onClickRollButton(_ sender: Any) {
        diceImageViewFirst.image = UIImage(named: "\(diceFirst[randomValueGenerator()])")
        diceImageViewSecond.image = UIImage(named: "\(diceFirst[randomValueGenerator()])")
    }
    
    func randomValueGenerator() -> Int {
        let randomInt = Int.random(in: 0..<6)
        return randomInt
    }
}

