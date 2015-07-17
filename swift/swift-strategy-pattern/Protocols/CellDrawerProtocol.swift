//
//  TLCellDrawerProtocol.swift
//  swift-strategy-pattern
//
//  Created by Sergio Garcia on 15/7/15.
//  Copyright (c) 2015 Sergio Garcia. All rights reserved.
//

import UIKit

protocol CellDrawerProtocol {
    func cellForTableView(tableview: UITableView, atIndexPath indexPath: NSIndexPath) -> UITableViewCell
    func drawCell(cell: UITableViewCell, withItem item: MediaItemProtocol)
}
