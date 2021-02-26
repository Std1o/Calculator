//
//  ViewController.swift
//  Calculator
//
//  Created by Илья on 26/02/2021.
//  Copyright © 2021 Stdio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var firstNum:Double = 0;
    var secondNum:Double = 0;
    var mathSign:Bool = false;
    var operationTag:Int = -1;
    @IBOutlet weak var result: UILabel!
    
    @IBAction func printDigit(_ sender: UIButton) {
        if (result.text == "+" || result.text == "-" ||
            result.text == "x" || result.text == "/") {
            result.text = ""
        }
        result.text! += String(sender.tag)
        if !mathSign {
            firstNum = Double(result.text!)!
        } else {
            secondNum = Double(result.text!)!
        }
    }
    
    @IBAction func clear(_ sender: UIButton) {
        result.text = ""
        firstNum = 0;
        secondNum = 0;
        mathSign = false;
        operationTag = -1
    }
    
    @IBAction func doOperation(_ sender: UIButton) {
        if sender.tag != 4 {
            operationTag = sender.tag
        }
        if !mathSign {
            switch sender.tag {
            case 0:
                result.text! = "+"
            case 1:
                result.text! = "-"
            case 2:
                result.text! = "x"
            case 3:
                result.text! = "/"
            default: break
            }
            mathSign = true
        } else {
            mathSign = false
            switch operationTag {
            case 0:
                firstNum = firstNum + secondNum
                result.text! = String(firstNum)
            case 1:
                firstNum = firstNum - secondNum
                result.text! = String(firstNum)
            case 2:
                firstNum = firstNum * secondNum
                result.text! = String(firstNum)
            case 3:
                firstNum = firstNum / secondNum
                result.text! = String(firstNum)
            default: break
            }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

