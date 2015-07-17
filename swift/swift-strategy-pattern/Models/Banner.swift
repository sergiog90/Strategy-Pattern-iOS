//
//  Banner.swift
//  swift-strategy-pattern
//
//  Created by Sergio Garcia on 16/7/15.
//  Copyright (c) 2015 Sergio Garcia. All rights reserved.
//

import UIKit

class Banner: NSObject {
    var imageUrl: String
    var title: String
    
    init(imageUrl: String, title: String) {
        self.imageUrl = imageUrl
        self.title = title
    }
}
