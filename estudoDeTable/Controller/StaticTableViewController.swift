//
//  StaticTableViewController.swift
//  estudoDeTable
//
//  Created by Beatriz Teles Castro on 21/09/19.
//  Copyright © 2019 Beatriz Teles Castro. All rights reserved.
//

import UIKit

class StaticTableViewController: UITableViewController {
    
    let Meals = ["Eggplant", "Zuquini", "Sundubun"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Called")
    }


    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return Meals.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: nil)
        let meal = Meals[indexPath.row]
        cell.textLabel?.text = meal
        return cell
    }

    
 }
