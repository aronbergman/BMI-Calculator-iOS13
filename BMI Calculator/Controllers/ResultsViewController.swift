//
//  ResultsViewController.swift
//  BMI Calculator
//
//  Created by Aron I. Bergman on 18.09.2023.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    
    var bmiValue: String?

    @IBOutlet weak var bmiLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLabel.text = bmiValue
    }
    
    @IBAction func recalculatedPress(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
}
