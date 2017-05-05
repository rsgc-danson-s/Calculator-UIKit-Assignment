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
    }
}

