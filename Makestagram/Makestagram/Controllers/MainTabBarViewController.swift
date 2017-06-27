//
//  MainTabBarViewController.swift
//  Makestagram
//
//  Created by Dustin Hsiang on 6/27/17.
//  Copyright © 2017 Dustin Hsiang. All rights reserved.
//

import UIKit

class MainTabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        delegate = self
        tabBar.unselectedItemTintColor = .black
    }
    
}

extension MainTabBarViewController: UITabBarControllerDelegate {
    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        if viewController.tabBarItem.tag == 1 {
            
            print("take photo")
            
            return false
        } else {
            return true
        }
    }
}
