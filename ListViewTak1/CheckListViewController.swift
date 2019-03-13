//
//  ViewController.swift
//  ListViewTak1
//
//  Created by kkubicki on 12.03.2019.
//  Copyright © 2019 kkubicki. All rights reserved.
//

import UIKit

class CheckListViewController	: UITableViewController {
    
    
    var list = ["Array", "Dupa", "Is this right?"]

    override func viewDidLoad() {
        super.viewDidLoad()
        print("CheckListViewController view did load")    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ChecklistItem", for: indexPath)
        
        if let label = cell.viewWithTag(1000) as? UILabel {
//            if indexPath.row == 0 {
                label.text = list[indexPath.row]
//            } else {
//                label.text = "Sleep"
//            }
        }
        
        return cell
    }
}

