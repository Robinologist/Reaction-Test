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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        var score = 0
        var highscore = 0
        
        scoreView.text = String(score)
        highscoreView.text = String(highscore)
    
    }

}
