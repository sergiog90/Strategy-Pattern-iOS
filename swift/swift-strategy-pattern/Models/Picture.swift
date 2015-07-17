//
//  Picture.swift
//  swift-strategy-pattern
//
//  Created by Sergio Garcia on 16/7/15.
//  Copyright (c) 2015 Sergio Garcia. All rights reserved.
//

import UIKit

class Picture: NSObject {
    var imageUrl: String
    
    init(imageUrl: String) {
        self.imageUrl = imageUrl
    }
}
