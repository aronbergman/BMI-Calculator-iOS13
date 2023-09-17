//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var calculatorBrain = CalculatorBrain()
    
    @IBOutlet weak var heightLabelAction: UILabel!
    @IBOutlet weak var weightLabelAction: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSliderChanged(_ sender: UISlider) {
        let formatValue = String(format: "%.2f", sender.value)
        heightLabelAction.text = "\(formatValue) m"
        calculatorBrain.setHight(hight: sender.value)
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        let formatValue = String(format: "%.0f", sender.value)
        weightLabelAction.text = "\(formatValue) kg"
        calculatorBrain.setWeight(weight: sender.value)
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
    
        let bmiValue = calculatorBrain.setBmiValue()
        
        let secondVC = SecondViewController()
        secondVC.bmiValue = String(format: "%.1f", bmiValue)
        
        self.present(secondVC, animated: true, completion: nil)
    }
}

