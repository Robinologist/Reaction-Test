//
//  ViewController.swift
//  Reaction Test
//
//  Created by Robin on 6/1/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var scoreView: UILabel!
    @IBOutlet var highscoreView: UILabel!
    
    var score = -1
    var highscore = -1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        if score > highscore {
            highscore = score
        }
        
        if score > -1 {
            scoreView.text = String(score)
        }
        if highscore > -1 {
            highscoreView.text = String(highscore)
        }
        
        print(score)
    
    }
}
