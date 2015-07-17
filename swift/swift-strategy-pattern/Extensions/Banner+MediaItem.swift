//
//  Time+MediaItem.swift
//  swift-strategy-pattern
//
//  Created by Sergio Garcia on 16/7/15.
//  Copyright (c) 2015 Sergio Garcia. All rights reserved.
//

import UIKit

extension Banner: MediaItemProtocol {
    var cellDrawer: CellDrawerProtocol {
        get {
            return BannerCellDrawer()
        }
    }
    
}
