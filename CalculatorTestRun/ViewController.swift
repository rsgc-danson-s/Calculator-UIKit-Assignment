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
    var state = Calculator()        // Make a new instance of the Calculator class to keep track data
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
        state.addToNewValue(digit: "1")
        updateDisplay()
    }

    @IBAction func twoPressed(_ sender: Any) {
        state.addToNewValue(digit: "2")
        updateDisplay()
    }
    
    @IBAction func threePressed(_ sender: Any) {
        state.addToNewValue(digit: "3")
        updateDisplay()
    }
    
    @IBAction func fourPressed(_ sender: Any) {
        state.addToNewValue(digit: "4")
        updateDisplay()
    }
    
    @IBAction func fivePressed(_ sender: Any) {
        state.addToNewValue(digit: "5")
        updateDisplay()
    }

    @IBAction func sixPressed(_ sender: Any) {
        state.addToNewValue(digit: "6")
        updateDisplay()
    }
    
    @IBAction func sevenPressed(_ sender: Any) {
        state.addToNewValue(digit: "7")
        updateDisplay()
    }

    @IBAction func eightPressed(_ sender: Any) {
        state.addToNewValue(digit: "8")
        updateDisplay()
    }
    
    @IBAction func ninePressed(_ sender: Any) {
        state.addToNewValue(digit: "9")
        updateDisplay()
    }
    
    @IBAction func equals(_ sender: Any) {
        state.equals()
        showNewAnswer()
    }
    
    @IBAction func multiply(_ sender: Any) {
        state.multiply()
        showNewAnswer()
    }
    
    @IBAction func clearButtonPressed(_ sender: Any) {
        state.clear()
        updateDisplay()
    }
    
    func updateDisplay() {
        display.text = state.providedValue
    }
    
    func showNewAnswer() {
        
        // See whether current value can be represented as an integer
        display.text = String(format: "%g", state.computedValue!)
    }
    
}

