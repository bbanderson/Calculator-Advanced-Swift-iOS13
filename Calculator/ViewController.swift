//
//  ViewController.swift
//  Calculator
//
//  Created by Angela Yu on 10/09/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var displayLabel: UILabel!
    
    private var isChanged: Bool = true
    
    @IBAction func calcButtonPressed(_ sender: UIButton) {
        
        //What should happen when a non-number button is pressed
    
        isChanged = true
        guard let number = Double(displayLabel.text!) else {fatalError()}
        
        if let calcMethod = sender.currentTitle {
            if calcMethod == "+/-" {
                displayLabel.text = "\(number * -1)"
            } else if calcMethod == "AC" {
                displayLabel.text = "0"
            } else if calcMethod == "%" {
                displayLabel.text = "\(number * 0.01)"
            }
        }
    }

    
    @IBAction func numButtonPressed(_ sender: UIButton) {
        
        //What should happen when a number is entered into the keypad
    
        if let currentPressedBtn = sender.currentTitle {
            if isChanged {
                isChanged = false
                displayLabel.text = currentPressedBtn
            } else {
                
                if currentPressedBtn == "." {
                    let
                    floor(Double(displayLabel.text!)!)
                }
                displayLabel.text! += currentPressedBtn
            }
        }
    }
}

