//
//  PictureListCellDrawer.swift
//  swift-strategy-pattern
//
//  Created by Sergio Garcia on 17/7/15.
//  Copyright (c) 2015 Sergio Garcia. All rights reserved.
//

import UIKit

class PictureListCellDrawer: CellDrawerProtocol {
    
    var data = [String]()
    func cellForTableView(tableview: UITableView, atIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        return tableview.dequeueReusableCellWithIdentifier(PictureListTableViewCell.reuseIdentifier, forIndexPath: indexPath) as! PictureListTableViewCell
    }
    
    func drawCell(cell: UITableViewCell, withItem item: MediaItemProtocol) {
        var cell = cell as! PictureListTableViewCell
        var pictureList = item as! PictureList
        cell.images = pictureList.images
        cell.collectionView.dataSource = cell
    }
}

// MARK: - UICollectionViewDataSource
extension PictureListTableViewCell: UICollectionViewDataSource {
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        var cell = collectionView.dequeueReusableCellWithReuseIdentifier(PictureCollectionViewCell.reuseIdentifier, forIndexPath: indexPath) as! PictureCollectionViewCell
        cell.mainImage.setImageWithURL(NSURL(string: images[indexPath.row])!)
        return cell
    }
}

