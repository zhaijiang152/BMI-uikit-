//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class calculateViewController: UIViewController {
    var calculatorB = calculatorbrain()
   
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightskider: UISlider!
    @IBOutlet weak var weightslider: UISlider!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSliderChanged(_ sender: UISlider) {
        heightLabel.text = String(format: "%.2fm",sender.value)
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        weightLabel.text = String(format: "%.0fkg",sender.value)
    }
    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = heightskider.value
        let weight = weightslider.value
       
        calculatorB.calculateBMI(height: height,weight: weight)
        
        self.performSegue(withIdentifier: "goToresult", sender: self)//执行segue，转到下一个视图
       
        
    }
   
    override func prepare(for segue: UIStoryboardSegue,sender: Any?){
        if segue.identifier == "goToresult"{
            let destinationVC = segue.destination as! ResultViewController
          
            destinationVC.bmivalue = calculatorB.getBMIValue()
            destinationVC.advice = calculatorB.getAdvice()
            destinationVC.color = calculatorB.getColor()
        }
    }
    
}

