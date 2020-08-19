//
//  Ex5ViewController.swift
//  PracticeTemplate
//
//  Created by Tien Le P. on 6/22/18.
//  Copyright © 2018 Tien Le P. All rights reserved.
//

import UIKit

class Ex5ViewController: BaseViewController {
    
    
    @IBOutlet private weak var ballview: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupBall()
    }
    func setupBall() {
        ballview.bounds.size = CGSize(width: 100, height: 100)
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let touch = touches.first {
            ballview.frame.origin.x = touch.location(in: view).x - ballview.frame.width / 2
            ballview.frame.origin.y = touch.location(in: view).y - ballview.frame.height / 2
        }
    }
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let touch = touches.first {
            ballview.frame.origin.x = touch.location(in: view).x - ballview.frame.width / 2
            ballview.frame.origin.y = touch.location(in: view).y - ballview.frame.height / 2
        }
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    
    
    // MARK: config
    override func setupUI() {
        super.setupUI()
        self.title = "Ex5"
    }
    
    override func setupData() {
    }
    
    
}
