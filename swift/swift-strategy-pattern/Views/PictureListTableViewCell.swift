//
//  PictureListTableViewCell.swift
//  swift-strategy-pattern
//
//  Created by Sergio Garcia on 17/7/15.
//  Copyright (c) 2015 Sergio Garcia. All rights reserved.
//

import UIKit

class PictureListTableViewCell: UITableViewCell {
    static let reuseIdentifier = "PictureListTableViewCell"
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    var images = [String]()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
