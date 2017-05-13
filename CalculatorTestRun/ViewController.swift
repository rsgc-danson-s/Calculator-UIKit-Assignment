//
//  ViewController.swift
//  CalculatorTestRun
//
//  Created by Russell Gordon on 4/27/17.
//  Copyright © 2017 Russell Gordon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: Properties
    var model = Calculator()        // Make a new instance of the Calculator class to keep track data
                                    // This is the "model" for the model-view-controller relationship
    
    @IBOutlet weak var display: UILabel!
    
    // MARK: Method(s) / Function(s)
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onePressed(_ sender: Any) {
        model.addToNewValue(digit: "1")
        updateDisplay()
    }

    @IBAction func twoPressed(_ sender: Any) {
        model.addToNewValue(digit: "2")
        updateDisplay()
    }
    
    @IBAction func threePressed(_ sender: Any) {
        model.addToNewValue(digit: "3")
        updateDisplay()
    }
    
    @IBAction func fourPressed(_ sender: Any) {
        model.addToNewValue(digit: "4")
        updateDisplay()
    }
    
    @IBAction func fivePressed(_ sender: Any) {
        model.addToNewValue(digit: "5")
        updateDisplay()
    }

    @IBAction func sixPressed(_ sender: Any) {
        model.addToNewValue(digit: "6")
        updateDisplay()
    }
    
    @IBAction func sevenPressed(_ sender: Any) {
        model.addToNewValue(digit: "7")
        updateDisplay()
    }

    @IBAction func eightPressed(_ sender: Any) {
        model.addToNewValue(digit: "8")
        updateDisplay()
    }
    
    @IBAction func ninePressed(_ sender: Any) {
        model.addToNewValue(digit: "9")
        updateDisplay()
    }
    
    @IBAction func equals(_ sender: Any) {
        model.equals()
        showNewAnswer()
    }
    
    @IBAction func multiply(_ sender: Any) {
        model.multiply()
        showNewAnswer()
    }
    
    @IBAction func clearButtonPressed(_ sender: Any) {
        model.clear()
        updateDisplay()
    }
    
    func updateDisplay() {
        display.text = model.providedValue
    }
    
    func showNewAnswer() {
        
        // See whether current value can be represented as an integer
        display.text = String(format: "%g", model.computedValue!)
    }
    
    @IBAction func divide(_ sender: Any) {
        model.divide()
        showNewAnswer()
    }
}

