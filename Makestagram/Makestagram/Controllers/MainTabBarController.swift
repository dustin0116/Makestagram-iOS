//
//  MainTabBarViewController.swift
//  Makestagram
//
//  Created by Dustin Hsiang on 6/27/17.
//  Copyright © 2017 Dustin Hsiang. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController {
    let photoHelper = MGPhotoHelper()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        photoHelper.completionHandler = {
            image in print("handle image")
        }
        delegate = self
        tabBar.unselectedItemTintColor = .black
    }
}

extension MainTabBarController: UITabBarControllerDelegate {
    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        if viewController.tabBarItem.tag == 1 {
            photoHelper.presentActionSheet(from: self)
            return false
        }
        return true
    }
}
