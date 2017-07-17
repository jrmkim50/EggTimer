//
//  ViewController.swift
//  MyEggTimer
//
//  Created by Jeremy Kim on 7/17/17.
//  Copyright © 2017 SimpleSwift. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var timeLabel: UILabel!
    
    var timer = Timer()
    var time = 210
    
    func decreaseTimer () {
        if time > 0 {
            time -= 1
            timeLabel.text = String(time)
        }
        else {
            timer.invalidate()
        }
    }
    
    @IBAction func playPressed(_ sender: Any) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.decreaseTimer), userInfo: nil, repeats: true)
    }
    
    @IBAction func pausePressed(_ sender: Any) {
        timer.invalidate()
    }
    
    
    @IBAction func resetPressed(_ sender: Any) {
        time = 210
        timeLabel.text = String(time)
    }
    
    
    @IBAction func minusTen(_ sender: Any) {
        time -= 10
        timeLabel.text = String(time)
    }
    
    
    @IBAction func plusTen(_ sender: Any) {
        time += 10
        timeLabel.text = String(time)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        timeLabel.text = String(time)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

