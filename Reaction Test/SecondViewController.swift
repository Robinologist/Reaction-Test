//
//  SecondViewController.swift
//  Reaction Test
//
//  Created by Robin on 6/1/23.
//

import UIKit

class SecondViewController: UIViewController {

    
    
    //Variables ----------------------------------------------------------------
    var timer: Timer?
    var yVelocity: Double = 0
    var xVelocity: Double = 0
    var floorBounds = 700.0
    var timeToPlanned = Int.random(in: 300..<1000)
    
    @IBOutlet var TapScreen1: UIImageView!
    @IBOutlet var TapScreen3: UIImageView!
    @IBOutlet var TapScreen2: UIImageView!
    
    @IBAction func ScreenTapped(_ sender: Any) {
        if timeToPlanned <= 0 {
            print(-(timeToPlanned))
        }
        else {
            print("Too Soon!")
        }
        //self.dismiss(animated: true, completion: nil)
    }
    
    //ViewDidLoad --------------------------------------------------------------
    override func viewDidLoad() {
        super.viewDidLoad()
        timer = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: (#selector(SecondViewController.Update)), userInfo: nil, repeats: true)
        TapScreen2.isHidden = true
        TapScreen3.isHidden = true
    }
    
    //Update ----------------------------------------------------------------------
    @objc func Update() {
        
        timeToPlanned -= 1
        
        if timeToPlanned < 1 {
            TapScreen2.isHidden = false
            TapScreen3.isHidden = false
        }
        
        //print(timeToPlanned)
    }
    
    
}
