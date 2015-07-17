//
//  ViewController.swift
//  swift-strategy-pattern
//
//  Created by Sergio Garcia on 15/7/15.
//  Copyright (c) 2015 Sergio Garcia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    var dummyData =
    [
    (image: "http://www.ecologiaverde.com/wp-content/2014/01/paisajes-natutrales-ecologiaverde-4.jpg", title: "LAGO"),
    (image: "http://3.bp.blogspot.com/-7PcSbeqNVTc/Tz1aYGoTnuI/AAAAAAAAwpI/SKQNv0AM8VM/s1600/paisajes-naturales---105.jpg", title: "PAISAJE"),
    (image: "http://3.bp.blogspot.com/-MEllFKg28nc/Ts5nZXn0ItI/AAAAAAAAALA/eVMboRauu4c/s1600/PaisajesNaturales-Filipinas.jpg", title: "NUBES"),
    (image: "https://pixabay.com/get/838fe7b8de92cb1139e6/1437050763/spring-179619_1280.jpg", title: "PÁJARO"),
    (image: "http://4.bp.blogspot.com/-uWl6aUBIsYs/UCMVcqBedWI/AAAAAAAACAw/aJd-lBNehm4/s1600/paisajes-bonitos.jpg", title: "MAR"),
    (image: "https://s-media-cache-ak0.pinimg.com/originals/ac/8d/de/ac8dde627e740561feb218991f0b4347.jpg", title: "MONTAÑA"),
    (image: "ttp://www.vanfotos.com/data/media/36/paisajes_hermosos_de_playas.jpg", title: "PAISAJE"),
    (image: "http://1.bp.blogspot.com/-D3R9KJ0jCnw/UGtYp25FjuI/AAAAAAAAEPU/wmW2Tf261Ng/s1600/paisajes-hermosos-de-mexico.jpg", title: "MAR"),
    (image: "http://www.fotos.org/galeria/data/905/Paisaje-exotico-arboles-playa-fondos-de-pantalla.jpg", title: "PLAYA")
    ]
    var data = [AnyObject]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.estimatedRowHeight = 90
        self.tableView.rowHeight = UITableViewAutomaticDimension
        self.tableView.dataSource = self
        
        loadData()
    }
    
    func loadData() {
        for var i = 0; i < dummyData.count; i++ {
            var picture = Picture(imageUrl: dummyData[i].image)
            data.append(picture)
            var banner = Banner(imageUrl: dummyData[i].image, title: dummyData[i].title)
            data.append(banner)
            if i % 3 == 0 {
                var pictureList = PictureList(images: dummyData.map{$0.image})
                data.append(pictureList)
            }
        }
    }
}

// MARK: - UITableViewDataSource
extension ViewController: UITableViewDataSource {
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var item = data[indexPath.row] as! MediaItemProtocol
        
        var cell = item.cellDrawer.cellForTableView(tableView, atIndexPath: indexPath)
        item.cellDrawer.drawCell(cell, withItem: item)
        return cell
    }
}
