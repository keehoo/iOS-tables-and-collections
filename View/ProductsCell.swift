//
//  ProductsCell.swift
//  ListViewTak1
//
//  Created by kkubicki on 15.03.2019.
//  Copyright © 2019 kkubicki. All rights reserved.
//

import UIKit

class ProductsCell: UICollectionViewCell {
    
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productTitle: UILabel!
    @IBOutlet weak var productPrice: UILabel!
    
    func updateViews(product: Product)  {
        productImage.image = UIImage(named: product.imageName)
        productTitle.text = product.title
        productPrice.text = product.price
    }
    
}
