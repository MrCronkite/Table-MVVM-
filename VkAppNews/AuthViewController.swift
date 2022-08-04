//
//  ViewController.swift
//  VkAppNews
//
//  Created by admin1 on 1.08.22.
//

import UIKit

class AuthViewController: UIViewController {
    
    private var authService: AuthService!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        authService = SceneDelegate.shared().authService
        view.backgroundColor = .red 
    }

    @IBAction func signinTouch(_ sender: UIButton) {
        authService.wakeUpSession()
    }
    
}

