//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {

    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSliderValueChanged(_ sender: UISlider) {
        let value = String(format: "%.3f",sender.value)
//        print(value)
        heightLabel.text = "\(value)m"
    }
    
    
    @IBAction func weightSliderValueChanged(_ sender: UISlider) {
        let value = Int(sender.value)
//        print(Int(sender.value))
        weightLabel.text = "\(value)Kg"
    }
    
    
    @IBAction func calculatePress(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        
        
        
        let BMI = weight / pow(height, 2)
        print("BMI \(BMI)")
        
//        let secondVC = SecondViewController()
//        secondVC.bmiValue = String(format: "%.1f",  BMI)
//
//        self.present(secondVC, animated: true, completion: nil)
    }
    
}

