//
//  Storyboard+Utility.swift
//  Makestagram
//
//  Created by Dustin Hsiang on 6/27/17.
//  Copyright © 2017 Dustin Hsiang. All rights reserved.
//

import Foundation
import UIKit

extension UIStoryboard {
    enum MGType: String {
        case main
        case login
        
        var filename: String {
            return rawValue.capitalized
        }
    }
    
    convenience init(type: MGType, bundle: Bundle? = nil) {
        self.init(name: type.filename, bundle: bundle)
    }
    
    static func initialViewController(for type: MGType) -> UIViewController {
        let storyboard = UIStoryboard(type: type)
        guard let initialViewController = storyboard.instantiateInitialViewController() else {
            fatalError("Could not instantiate initial view controller for \(type.filename) storyboard.")
        }
        return initialViewController
    }
}
