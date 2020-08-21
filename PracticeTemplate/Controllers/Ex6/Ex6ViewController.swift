//
//  Ex6ViewController.swift
//  PracticeTemplate
//
//  Created by Tien Le P. on 6/22/18.
//  Copyright © 2018 Tien Le P. All rights reserved.
//

import UIKit

class Ex6ViewController: BaseViewController {
    
    // MARK: - IBoulet
    @IBOutlet private weak var grayView: UIView!
    @IBOutlet private weak var blueView: UIView!
    @IBOutlet private weak var thumbView: UIView!
    @IBOutlet private weak var thumbLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupThumb()
        setupLabel()
    }
    
    // MARK: - Action
    private func setupThumb() {
        thumbView.layer.cornerRadius = thumbView.bounds.width / 2
        thumbView.backgroundColor = .orange
        thumbView.center = CGPoint(x: grayView.frame.midX, y: grayView.frame.midY)
    }
    private func setupLabel() {
        thumbLabel.text = "%"
        thumbLabel.textAlignment = .center
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let touch = touches.first {
            let location = touch.location(in: self.view)
            if location.y >= grayView.frame.minY, location.y <= grayView.frame.maxY {
                thumbView.center = CGPoint(x: grayView.center.x, y: location.y)
                blueView.frame = CGRect(x: grayView.frame.origin.x, y: grayView.frame.origin.y, width: blueView.frame.width, height: location.y - grayView.frame.origin.y)
                let percent = 100 * ( 1 - blueView.frame.height / grayView.frame.height)
                thumbLabel.text = "\(Int(percent))"
            }
        }
    }
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let touch = touches.first {
            let location = touch.location(in: self.view)
            if location.y >= grayView.frame.minY, location.y <= grayView.frame.maxY {
                thumbView.center = CGPoint(x: grayView.center.x, y: location.y)
                blueView.frame = CGRect(x: grayView.frame.origin.x, y: grayView.frame.origin.y, width: blueView.frame.width, height: location.y - grayView.frame.origin.y)
                let percent = 100 * ( 1 - blueView.frame.height / grayView.frame.height)
                thumbLabel.text = "\(Int(percent))%"
            }
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // MARK: config
    override func setupUI() {
        super.setupUI()
        self.title = "Ex6"
    }
    
  }

