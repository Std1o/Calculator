//
//  ViewController.swift
//  Calculator
//
//  Created by Илья on 26/02/2021.
//  Copyright © 2021 Stdio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var result: UILabel!
    @IBAction func printDigit(_ sender: UIButton) {
        result.text! += String(sender.tag)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

