//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by michael tamsil on 28/12/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

struct CalculatorBrain {

    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / pow(height, 2 )
        if (bmiValue>24.9){
            bmi = BMI(value: bmiValue , advice: "eat less pies!", color: #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1))
        } else if (bmiValue >= 18.5 && bmiValue <= 24.9) {
            bmi = BMI(value: bmiValue , advice: "Fit as a fiddle!", color: #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1))
        } else {
            bmi = BMI(value: bmiValue , advice: "eat more pies!", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        }
    }
    
    func getBMIValue() -> String {
        if let saveBmi = bmi?.value {
            let bmiTo1DecimalPlace =  String(format: "%.2f", saveBmi)
            return bmiTo1DecimalPlace
        } else {
            return "0.0"
        }
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? .white
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "not yet have advice"
    }
    
}
