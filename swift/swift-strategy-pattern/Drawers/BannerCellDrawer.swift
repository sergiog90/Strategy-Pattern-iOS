//
//  TimeCellDrawer.swift
//  swift-strategy-pattern
//
//  Created by Sergio Garcia on 16/7/15.
//  Copyright (c) 2015 Sergio Garcia. All rights reserved.
//

import UIKit

class BannerCellDrawer: CellDrawerProtocol {
    
    func cellForTableView(tableview: UITableView, atIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        return tableview.dequeueReusableCellWithIdentifier(BannerTableViewCell.reuseIdentifier, forIndexPath: indexPath) as! BannerTableViewCell
    }
    
    func drawCell(cell: UITableViewCell, withItem item: MediaItemProtocol) {
        var cell = cell as! BannerTableViewCell
        var banner = item as! Banner
        cell.titleLabel.text = banner.title
        cell.bannerPicture.setImageWithURL(NSURL(string: banner.imageUrl)!)
    }
}
