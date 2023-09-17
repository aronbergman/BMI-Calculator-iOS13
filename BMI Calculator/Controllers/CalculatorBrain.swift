//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Aron I. Bergman on 17.09.2023.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import Foundation

struct CalculatorBrain {
    var hight: Float = 0
    var weight: Float = 0
    var bmiValue: Float = 0
    

    mutating func setHight(hight: Float) {
        self.hight = hight
    }
    
    mutating func setWeight(weight: Float) {
        self.weight = weight
    }
    
    mutating func setBmiValue() -> Float {
        return weight / (hight * hight)
    }
}
