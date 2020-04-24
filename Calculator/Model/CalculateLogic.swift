//
//  Calculate.swift
//  Calculator
//
//  Created by HYUNHONG BYUN on 2020/04/24.
//  Copyright © 2020 London App Brewery. All rights reserved.
//

import Foundation

class CalculateLogic {
    
    func calculate(symbol: String) -> Double {
        if symbol == "+/-" {
            return -1
        } else if symbol == "AC" {
            return 0
        } else if symbol == "%" {
            return 0.01
        } else {
            return 0
        }
    }
}
