//
//  ProductsViewController.swift
//  ListViewTak1
//
//  Created by kkubicki on 15.03.2019.
//  Copyright © 2019 kkubicki. All rights reserved.
//

import UIKit

class ProductsViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var collectionView: UICollectionView!
    private(set) public var products = [Product]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
    }
    
    
    func initializeProducts(category: Category) {
        print("ADASDASD \(category.title)")
        products = DataService.instance.getProducts(forItem: category.title)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        print("cell for item \(products[indexPath.row])")
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as? ProductsCell {
            cell.updateViews(product: products[indexPath.row])
            return cell
        }
        return ProductsCell()
    }
}
