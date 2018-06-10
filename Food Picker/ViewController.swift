//
//  ViewController.swift
//  Food Picker
//
//  Created by Kyle Lee on 6/8/18.
//  Copyright © 2018 Kyle Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var todaysChoiceLabel: UILabel!
    @IBOutlet weak var foodTypeLabel: UILabel!
    @IBOutlet weak var chooseButton: UIButton!
    
    let foodTypes: [String] = ["American", "Mexican", "Italian", "Greek", "Thai", "Chinese"]
    
    @IBAction func didTapChooseButton() {
        todaysChoiceLabel.isHidden = false
        foodTypeLabel.isHidden = false
        
        chooseButton.setTitle("Choose Again", for: .normal)
        
        let foodTypesCount = UInt32(foodTypes.count)
        let randomNumber = arc4random_uniform(foodTypesCount)
        let intRandomNumber = Int(randomNumber)
        let food = foodTypes[intRandomNumber]
        
        foodTypeLabel.text = food
        
        
    }
    
}












