//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

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
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        let formatValue = String(format: "%.0f", sender.value)
        weightLabelAction.text = "\(formatValue) kg"
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let hight = heightSlider.value
        let weight = weightSlider.value
        let bmiValue = weight / (hight * hight)
        
        let secondVC = SecondViewController()
        secondVC.bmiValue = String(format: "%.1f", bmiValue)
        
        self.present(secondVC, animated: true, completion: nil)
    }
}

