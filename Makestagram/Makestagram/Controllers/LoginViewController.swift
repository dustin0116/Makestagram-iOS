//
//  LoginViewController.swift
//  Makestagram
//
//  Created by Dustin Hsiang on 6/26/17.
//  Copyright © 2017 Dustin Hsiang. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var loginButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func loginButtonTapped(_ sender: UIButton) {
        print("login button tapped")
    }
}
