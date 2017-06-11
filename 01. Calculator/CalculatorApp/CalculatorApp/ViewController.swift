//
//  ViewController.swift
//  CalculatorApp
//
//  Created by Volodymyr Romanov on 6/10/17.
//  Copyright © 2017 Vladimir Romanov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBAction func touchDigit(_ sender: UIButton) {
        let digit = sender.currentTitle!
        let textCurrentlyInDisplay = display!.text!
        display!.text = textCurrentlyInDisplay + digit
    }
    
    @IBOutlet weak var display: UILabel?
    
    var userIsInTheMiddleOfTyping = false
    
    
    
    
    
    
    
}

