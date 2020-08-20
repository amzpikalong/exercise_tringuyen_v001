//
//  Ex1ViewController.swift
//  PracticeTemplate
//
//  Created by Tien Le P. on 6/22/18.
//  Copyright © 2018 Tien Le P. All rights reserved.
//

import UIKit

class Ex1ViewController: BaseViewController {
    
    var exercise: Exercise?
    
    // MARK: - IBoutlet
    @IBOutlet weak var userLabel: UILabel!
    @IBOutlet weak var userTextField: UITextField!
    
    override func viewDidLoad() {
        navigationController?.setNavigationBarHidden(true, animated: false)
        super.viewDidLoad()
        print("Test Fix code")
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
   // MARK: - Action
    @IBAction func buttonTap(_ sender: Any) {
        if let username = userTextField.text , username != "" {
            userLabel.text = "Welcome \(username)"
        } else {
            userLabel.text = "Please input name"
            print("Check ABC")
        }
    }
    
    
    // MARK: config
    override func setupUI() {
        super.setupUI()
        self.title = exercise?.name
    }
    
    override func setupData() {
        
    }
    
    
}
