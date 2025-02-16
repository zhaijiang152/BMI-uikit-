

import Foundation
import UIKit

struct calculatorbrain{
   
    var bmi:BMI?
    
    func getBMIValue () ->String{
        let bmito = String(format: "%.1f",bmi?.value ?? 0.0 )
            return bmito
     
    }
    
    func getAdvice()->String{
        return bmi?.advice ?? "无建议"
    }
    func getColor()->UIColor{
        return bmi?.color ?? UIColor.white
    }
    
    
    mutating func calculateBMI(height: Float, weight:Float){
        let bmivalue = weight / (height * height)
        
        if bmivalue < 18.5{
            bmi = BMI(value: bmivalue, advice: "多吃点", color: UIColor.systemBlue)
            print("过轻")
        }else if bmivalue > 18.5 && bmivalue < 24.9{
            bmi = BMI(value: bmivalue, advice: "很健康！", color:UIColor.systemGreen)
            print("正常")
        }else {
            bmi = BMI(value: bmivalue, advice: "少吃点", color: UIColor.systemRed)
            print("超重")
        }
        
    }
}

