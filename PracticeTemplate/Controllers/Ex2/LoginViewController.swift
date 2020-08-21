//
//  LoginViewController.swift
//  PracticeTemplate
//
//  Created by Tri Nguyen C. on 8/19/20.
//  Copyright © 2020 Tien Le P. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = ""
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func loginTapButton(_ sender: Any) {
        if let userName = usernameTextField.text, userName != "", let password = passwordTextField.text, password != "" {
            let pageViewController = PageViewController()
            pageViewController.username = userName
            navigationController?.pushViewController(pageViewController, animated: true)
                    
    }
    

}

}
