//
//  TimeTableViewCell.swift
//  swift-strategy-pattern
//
//  Created by Sergio Garcia on 16/7/15.
//  Copyright (c) 2015 Sergio Garcia. All rights reserved.
//

import UIKit

class BannerTableViewCell: UITableViewCell {
    static let reuseIdentifier = "BannerTableViewCell"
    
    @IBOutlet weak var bannerPicture: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.bannerPicture.layer.cornerRadius = 5
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    
}