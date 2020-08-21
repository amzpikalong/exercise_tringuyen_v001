//
//  Ex4ViewController.swift
//  PracticeTemplate
//
//  Created by Tien Le P. on 6/22/18.
//  Copyright © 2018 Tien Le P. All rights reserved.
//

import UIKit

class Ex4ViewController: BaseViewController {
    
    var counter = 0.0
    var timer = Timer()
    var isrunningtimer = false
    
    // MARK: - IBoutlet
    @IBOutlet weak var timerLabel: UILabel!
    @IBOutlet weak var star: UIButton!
    @IBOutlet weak var pause: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    // MARK: - IBaction
    
    @IBAction func starButton(_ sender: Any) {
        if !isrunningtimer {
            timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(runtimer), userInfo: nil, repeats: true)
            isrunningtimer = true
            star.isEnabled = false
            pause.isEnabled = true
        }
    }
    @objc func runtimer() {
        counter += 0.1
        let flooredCounter = Int(floor(counter))
        let hour = flooredCounter / 3600
        let minute = (flooredCounter / 3600) % 60
        var miuteString = "\(minute)"
        if minute < 10 {
            miuteString = "0 \(miuteString)"
        }
        let second = (flooredCounter % 3600) % 60
        var secondString = "\(second)"
        if second < 10 {
            secondString = "0 \(second)"
        }
        let decisecond = String(format:"%.1f",counter).components(separatedBy: ".").last!
        timerLabel.text = "\(hour):\(miuteString):\(secondString).\(decisecond)"
    }
   
    @IBAction func pauseButton(_ sender: Any) {
        isrunningtimer = false
        star.isEnabled = true
        pause.isEnabled = false
        timer.invalidate()
    }
    
   
    
    // MARK: config
    override func setupUI() {
        super.setupUI()
        self.title = "Ex4"
    }
    
    override func setupData() {
    }
    
    
}
