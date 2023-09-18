//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Aron I. Bergman on 17.09.2023.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    var hight: Float = 0
    var weight: Float = 0
    var bmi: BMI?
    
    mutating func setHight(hight: Float) {
        self.hight = hight
    }
    
    mutating func setWeight(weight: Float) {
        self.weight = weight
    }
    
    func getAdvice() -> String {
        return bmi?.advance ?? "No advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.white
    
    }
    
    mutating func calculatingBMI() {
        let bmiValue = weight / (hight * hight)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advance: "Eat more pies!", color: UIColor.blue)
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advance: "Fir as a fiddle!", color: UIColor.green)
        } else {
            bmi = BMI(value: bmiValue, advance: "Eat less pies!", color: UIColor.red)
        }
               
    }
    
    mutating func getBmiValue() -> String {
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
    }
}
