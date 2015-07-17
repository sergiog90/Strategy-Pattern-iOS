//
//  TLMovie+MediaItem.swift
//  swift-strategy-pattern
//
//  Created by Sergio Garcia on 15/7/15.
//  Copyright (c) 2015 Sergio Garcia. All rights reserved.
//

import UIKit

extension Picture: MediaItemProtocol {
    var cellDrawer: CellDrawerProtocol {
        get {
            return PictureCellDrawer()
        }
    }
        
}
