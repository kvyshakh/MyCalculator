//
//  ViewController.swift
//  Calculator_Mock2
//
//  Created by Vyshakh Kandamath on 8/23/16.
//  Copyright © 2016 Vyshakh Kandamath. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultTextView: UITextView!

    var displayText: String = ""
    var operand1: Double? = nil
    var operand2: Double? = nil
    var operation: String? = nil

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        resultTextView.layer.borderColor = UIColor.blackColor().CGColor
        resultTextView.layer.borderWidth = 1.0
        resultTextView.text = "0"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func oneButtonPushed(sender: UIButton) {
        displayText += "1"
        refreshText()
    }
    
    @IBAction func twoButtonPushed(sender: UIButton) {
        displayText += "2"
        refreshText()
    }
    
    @IBAction func threeButtonPushed(sender: UIButton) {
        displayText += "3"
        refreshText()
    }
    
    @IBAction func fourButtonPushed(sender: UIButton) {
        displayText += "4"
        refreshText()
    }
    
    @IBAction func fiveButtonPushed(sender: UIButton) {
        displayText += "5"
        refreshText()
    }
    
    @IBAction func sixButtonPushed(sender: UIButton) {
        displayText += "6"
        refreshText()
    }
    
    @IBAction func sevenButtonPushed(sender: UIButton) {
        displayText += "7"
        refreshText()
    }
    
    @IBAction func eightButtonPushed(sender: UIButton) {
        displayText += "8"
        refreshText()
    }
    
    @IBAction func nineButtonPushed(sender: UIButton) {
        displayText += "9"
        refreshText()
    }
    
    @IBAction func zeroButtonPushed(sender: UIButton) {
        displayText += "0"
        refreshText()
    }
    
    @IBAction func decimalButtonPushed(sender: UIButton) {
        if (!displayText.containsString(".")) {
            displayText += "."
            refreshText()
        }
    }
    
    @IBAction func plusButtonPressed(sender: UIButton) {
        operation = "+"
        operand1 = Double(displayText)
        displayText = ""
        refreshText()
    }
    
    @IBAction func minusButtonPressed(sender: UIButton) {
        operation = "-"
        operand1 = Double(displayText)
        displayText = ""
        refreshText()
    }
    
    @IBAction func multiplyButtonPressed(sender: UIButton) {
        operation = "*"
        operand1 = Double(displayText)
        displayText = ""
        refreshText()
    }
    
    @IBAction func divideButtonPressed(sender: UIButton) {
        operation = "/"
        operand1 = Double(displayText)
        displayText = ""
        refreshText()
    }
    
    @IBAction func clearButtonPressed(sender: UIButton) {
        displayText = ""
        operand1 = nil
        operand2 = nil
        operation = nil
        refreshText()
    }
    
    @IBAction func equalsButtonPressed(sender: UIButton) {
        operand2 = Double(displayText)
        
        var result = 0.0
        
        if (operation! == "+") {
            result = operand1! + operand2!
        }
        else if (operation! == "-") {
            result = operand1! - operand2!
        }
        else if (operation! == "*") {
            result = operand1! * operand2!
        }
        else if (operation! == "/") {
            result = operand1! / operand2!
        }
        
        displayText = String(result)
        refreshText()
    }
    
    
    func refreshText() {
        resultTextView.text = displayText
    }
    
    
    
    
    

}

