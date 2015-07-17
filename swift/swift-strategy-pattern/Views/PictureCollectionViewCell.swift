//
//  PictureCollectionViewCell.swift
//  swift-strategy-pattern
//
//  Created by Sergio Garcia on 17/7/15.
//  Copyright (c) 2015 Sergio Garcia. All rights reserved.
//

import UIKit

class PictureCollectionViewCell: UICollectionViewCell {
    static let reuseIdentifier = "PictureCollectionViewCell"
    
    @IBOutlet weak var mainImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.mainImage.layer.cornerRadius = 5
    }
}
