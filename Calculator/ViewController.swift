//
//  ViewController.swift
//  Calculator
//
//  Created by Russell Gordon on 4/30/17.
//  Copyright © 2017 Russell Gordon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //This is a connection to the label in our view
    
    @IBOutlet weak var labelDIsplay: UILabel!
    
    //Create an instance (object) of the calcularor class
    var model = Calculator()

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
        labelDIsplay.text = model.providedValue
    }
    @IBAction func twoPressed(_ sender: Any) {
        model.addToNewValue(digit: "2")
        labelDIsplay.text = model.providedValue
    }
    @IBAction func threePressed(_ sender: Any) {
        model.addToNewValue(digit: "3")
        labelDIsplay.text = model.providedValue
    }
    @IBAction func fourPressed(_ sender: Any) {
        model.addToNewValue(digit: "4")
        labelDIsplay.text = model.providedValue
    }
    @IBAction func fivePressed(_ sender: Any) {
        model.addToNewValue(digit: "5")
        labelDIsplay.text = model.providedValue
    }
    @IBAction func sixPressed(_ sender: Any) {
        model.addToNewValue(digit: "6")
        labelDIsplay.text = model.providedValue
    }
    @IBAction func sevenPressed(_ sender: Any) {
        model.addToNewValue(digit: "7")
        labelDIsplay.text = model.providedValue
    }
    @IBAction func eightPressed(_ sender: Any) {
        model.addToNewValue(digit: "8")
        labelDIsplay.text = model.providedValue
    }
    @IBAction func ninePressed(_ sender: Any) {
        model.addToNewValue(digit: "9")
        labelDIsplay.text = model.providedValue
    }
}

