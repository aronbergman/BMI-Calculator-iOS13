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
}

