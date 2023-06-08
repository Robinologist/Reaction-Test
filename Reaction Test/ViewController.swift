//
//  ViewController.swift
//  Reaction Test
//
//  Created by Robin on 6/1/23.
//

import UIKit

var highscore = -1

class ViewController: UIViewController {

    @IBOutlet var scoreView: UILabel!
    @IBOutlet var highscoreView: UILabel!
    
    var score = -1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        if highscore < 0 {
            highscore = score
        }
        
        if score < highscore && highscore > -1 && score > -1 {
            highscore = score
        }
        
        if score > -1 {
            scoreView.text = String(score)
        }
        if highscore > -1 {
            highscoreView.text = String(highscore)
        }
        
        print(score)
        print(highscore)
        
    }
}
