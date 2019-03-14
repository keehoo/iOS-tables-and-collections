//
//  ViewController.swift
//  ListViewTak1
//
//  Created by kkubicki on 14.03.2019.
//  Copyright © 2019 kkubicki. All rights reserved.
//

import UIKit

class SwageVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
  
    @IBOutlet weak var categoryTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        categoryTable.dataSource = self // these two protocols (interfaces) are here implemented so data source and delegate are self (this)
        categoryTable.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getCategories().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell") as? CategoryCellTableViewCell {
            cell.updateViews(category: DataService.instance.getCategories()[indexPath.row])
            return cell
        }
        return CategoryCellTableViewCell()
    }
}
