//
//  TLMovieCellDrawer.swift
//  swift-strategy-pattern
//
//  Created by Sergio Garcia on 15/7/15.
//  Copyright (c) 2015 Sergio Garcia. All rights reserved.
//

import UIKit

class PictureCellDrawer: CellDrawerProtocol {
    
    func cellForTableView(tableview: UITableView, atIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        return tableview.dequeueReusableCellWithIdentifier(PictureTableViewCell.reuseIdentifier, forIndexPath: indexPath) as! PictureTableViewCell
    }
    
    func drawCell(cell: UITableViewCell, withItem item: MediaItemProtocol) {
        var cell = cell as! PictureTableViewCell
        var picture = item as! Picture
        cell.mainPicture.setImageWithURL(NSURL(string: picture.imageUrl)!)
    }
}
