//
//  ViewController.swift
//  eggplant-brownie
//
//  Created by Alura on 19/09/16.
//  Copyright © 2016 Alura. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var nameField : UITextField?
    @IBOutlet var happinessField : UITextField?
    var delegate : MealDelegate?
    
    @IBAction func add() {
        if(nameField == nil || happinessField == nil) {
            return
        }
        
        let name:String = nameField!.text!
        
        if let happiness = Int(happinessField!.text!) {
            let meal = Meal(name: name, happiness: happiness)

            if delegate != nil {
                delegate?.addMeal(meal)
            }
            if let navigation = navigationController {
                navigation.popViewController(animated: true)
            }
            
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
}










