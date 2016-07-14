//
//  ViewController.swift
//  War
//
//  Created by Amna  on 11/07/2016.
//  Copyright © 2016 Amnavor. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstCardImageView: UIImageView!
    @IBOutlet weak var secondCardImageView: UIImageView!
    @IBOutlet weak var playRoundButton: UIButton!
    @IBOutlet weak var backgroundImageView: UIImageView!
    @IBOutlet weak var PlayerScoreLabel: UILabel!
    @IBOutlet weak var EnemyScoreLabel: UILabel!
    var playerScore:Int = 0
    var enemyScore:Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func playRoundTapped(sender: UIButton) {
        //select a random # to correspond to image asset (ie card#)
        
        let firstRandomNumber = arc4random_uniform(13) + 1
        let secondRandomNumber = arc4random_uniform(13) + 1
        
        let firstCardString:String = String(format: "card%i", firstRandomNumber)
        let secondCardString:String = String(format: "card%i", secondRandomNumber)
        
        self.firstCardImageView.image = UIImage(named: firstCardString)
        self.secondCardImageView.image = UIImage(named: secondCardString)
        
        //determine winner
        if firstRandomNumber > secondRandomNumber {
            self.playerScore += 1
            self.PlayerScoreLabel.text = String(self.playerScore)
        }
        else if firstRandomNumber == secondRandomNumber {
            //leave this
        }
        else {
            self.enemyScore += 1
            self.EnemyScoreLabel.text = String(self.enemyScore)
        }
    }

}

