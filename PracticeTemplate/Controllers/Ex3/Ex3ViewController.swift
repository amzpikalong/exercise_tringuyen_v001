//
//  Ex3ViewController.swift
//  PracticeTemplate
//
//  Created by Tien Le P. on 6/22/18.
//  Copyright © 2018 Tien Le P. All rights reserved.
//

import UIKit

class Ex3ViewController: BaseViewController {
    
    
    @IBOutlet weak var updateTime: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let touch = touches.first {
            let currentDateTime = Date()
            let formatter = DateFormatter()
            formatter.timeStyle = .medium
            formatter.dateStyle = .long
            
            let dateTimeString = formatter.string(from: currentDateTime)
            updateTime.text = "" + dateTimeString
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // MARK: config
    override func setupUI() {
        super.setupUI()
        self.title = "Ex3"
    }
    
    override func setupData() {
    }
    
    
}
