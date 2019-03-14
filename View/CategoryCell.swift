//
//  CategoryCellTableViewCell.swift
//  ListViewTak1
//
//  Created by kkubicki on 14.03.2019.
//  Copyright © 2019 kkubicki. All rights reserved.
//

import UIKit

class CategoryCellTableViewCell: UITableViewCell {

    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categoryTitle: UILabel!

    
    override func awakeFromNib() {
        super.awakeFromNib()
           // Initialization code
    }
    
    func updateViews(category: Category) {
        categoryImage.image = UIImage(named: category.imageName)
        categoryTitle.text = category.title
    }
}
