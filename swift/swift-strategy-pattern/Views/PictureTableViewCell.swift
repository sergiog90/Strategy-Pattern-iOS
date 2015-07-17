//
//  TLMovieTableViewCell.swift
//  swift-strategy-pattern
//
//  Created by Sergio Garcia on 15/7/15.
//  Copyright (c) 2015 Sergio Garcia. All rights reserved.
//

import UIKit

class PictureTableViewCell: UITableViewCell {
    static let reuseIdentifier = "PictureTableViewCell"
    
    @IBOutlet weak var mainPicture: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
