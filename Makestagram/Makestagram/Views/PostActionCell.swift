//
//  PostActionCell.swift
//  Makestagram
//
//  Created by Dustin Hsiang on 6/28/17.
//  Copyright © 2017 Dustin Hsiang. All rights reserved.
//

import Foundation
import UIKit

class PostActionCell: UITableViewCell {
    
    @IBOutlet weak var likeButton: UIButton!
    @IBOutlet weak var likeCountLabel: UILabel!
    @IBOutlet weak var timeAgoLabel: UILabel!
    
    static let height: CGFloat = 46
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    @IBAction func likeButtonTapped(_ sender: UIButton) {
    }
}
