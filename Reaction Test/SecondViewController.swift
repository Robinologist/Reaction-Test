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
    var timeToPlanned = =-1
    
    @IBOutlet var TapScreen1: UIImageView!
    @IBOutlet var TapScreen3: UIImageView!
    @IBOutlet var TapScreen2: UIImageView!
    
    //ViewDidLoad --------------------------------------------------------------
    override func viewDidLoad() {
        super.viewDidLoad()
        timer = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: (#selector(SecondViewController.Update)), userInfo: nil, repeats: true)
        TapScreen2.isHidden = true
        TapScreen3.isHidden = true
    }
    
    //Update ----------------------------------------------------------------------
    @objc func Update() {
        if timeToPlanned == -1{
            timeToPlanned = Int.random(in: 300..<1000)
        }
        
        if timeToPlanned > 0 {
            timeToPlanned -= 1
        }
        
        if timeToPlanned == 0 {
            TapScreen2.isHidden = false
            TapScreen3.isHidden = false
        }
        
        print(timeToPlanned)
    }
}
