//
//  PageViewController.swift
//  PracticeTemplate
//
//  Created by Tri Nguyen C. on 8/19/20.
//  Copyright © 2020 Tien Le P. All rights reserved.
//

import UIKit

class PageViewController: UIViewController {

    // MARK: - IBoutlet
    var username = ""
    
    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title  = "Home"
        nameLabel.text = "Welcome \(username)"
        
        let logout = UIButton(frame: CGRect(x: 35, y: 0, width: 50, height: 44))
        logout.setImage(UIImage(named: "x.png"), for: .normal)
        logout.addTarget(self, action: #selector(out), for: .touchUpInside)
        
        let rightCustom = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 44))
        rightCustom.bounds = rightCustom.bounds.offsetBy(dx: -20, dy: 0)
        rightCustom.addSubview(logout)
        
        let rightBarButton = UIBarButtonItem(customView: rightCustom)
        navigationItem.rightBarButtonItem = rightBarButton
        
    }
    @objc func out() {
        navigationController?.popViewController(animated: true)
    }

}
