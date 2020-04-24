//
//  ViewController.swift
//  Calculator
//
//  Created by Angela Yu on 10/09/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let calculateLogic = CalculateLogic()
    
    @IBOutlet weak var displayLabel: UILabel!
    
    private var isChanged: Bool = true
    
    private var displayValue: Double {
        get {
            guard let number = Double(displayLabel.text!) else { fatalError("Cannot convert String into Double.") }
            return number
        }
        set {
            displayLabel.text = "\(newValue)"
        }
    }
    
    @IBAction func calcButtonPressed(_ sender: UIButton) {
        
        //What should happen when a non-number button is pressed
    
        isChanged = true
        let calculate = calculateLogic.calculate(symbol: sender.currentTitle!)
        displayValue *= calculate
        
    }

    
    @IBAction func numButtonPressed(_ sender: UIButton) {
        
        //What should happen when a number is entered into the keypad
    
        if let currentPressedBtn = sender.currentTitle {
            if isChanged {
                isChanged = false
                displayLabel.text = currentPressedBtn
            } else {
                
                if currentPressedBtn == "." {
                    
                    // 내림한 것과 안한 것이 같다면 isInt에는 true가 저장된다.
                    let isInt = floor(displayValue) == displayValue
                    
                    // 만약 isInt가 false라면 현재 함수를 더 이상 가지 않고 그냥 끝내버리기. true인 경우 = 소수점을 누르기 직전까지 화면 상 모든 수가 정수여야 함.
                    if !isInt {
                        return
                    }
                }
                displayLabel.text! += currentPressedBtn
            }
        }
    }
}

