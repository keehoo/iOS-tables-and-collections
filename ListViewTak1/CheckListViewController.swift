//
//  ViewController.swift
//  ListViewTak1
//
//  Created by kkubicki on 12.03.2019.
//  Copyright © 2019 kkubicki. All rights reserved.
//

import UIKit

class CheckListViewController	: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("CheckListViewController view did load")    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ChecklistItem", for: indexPath)
        return cell
    }
}

