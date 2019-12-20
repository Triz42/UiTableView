//
//  MealsTableViewController.swift
//  estudoDeTable
//
//  Created by Beatriz Teles Castro on 24/10/19.
//  Copyright © 2019 Beatriz Teles Castro. All rights reserved.
//

import UIKit

class MealsTableViewController: UITableViewController, MealDelegate {
  
    var meals = [Meal(name: "Biscoito", happiness: 5),
                Meal(name: "Ovos", happiness: 3),
                Meal(name: "Bolo", happiness: 1)]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        return meals.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let row = indexPath.row
        let meal = meals[row]
        let cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: nil)
        cell.textLabel?.text = meal.name
        
        return cell
    }
    
    // MARK: - Function
    
    func addMeal(_ meal: Meal) {
        meals.append(meal)
        tableView.reloadData()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "addMeal" {
            let view = segue.destination as! ViewController
            view.delegate = self
        }
        
    }
    
}
