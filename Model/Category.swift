//
//  Category.swift
//  ListViewTak1
//
//  Created by kkubicki on 14.03.2019.
//  Copyright © 2019 kkubicki. All rights reserved.
//

import Foundation

struct Category{
    private(set) public var title: String
    private(set) public var imageName: String
    
    
    init(title: String, imageName: String) {
        self.title = title
        self.imageName = imageName
    }
}
