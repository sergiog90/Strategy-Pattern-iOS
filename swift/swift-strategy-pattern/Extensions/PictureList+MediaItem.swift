//
//  PictureList+MediaItem.swift
//  swift-strategy-pattern
//
//  Created by Sergio Garcia on 17/7/15.
//  Copyright (c) 2015 Sergio Garcia. All rights reserved.
//

import UIKit

extension PictureList: MediaItemProtocol {
    var cellDrawer: CellDrawerProtocol {
        get {
            return PictureListCellDrawer()
        }
    }
    
}