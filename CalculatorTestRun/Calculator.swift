//
//  Calculator.swift
//  CalculatorTestRun
//
//  Created by Russell Gordon on 4/27/17.
//  Copyright © 2017 Russell Gordon. All rights reserved.
//

import Foundation

class Calculator {
    
    // MARK: Properties
    var providedValue : String = ""
    var computedValue : Double? = nil
    var operation : Operation? = nil
    
    // MARK: Initializer(s)
    
    // MARK: Method(s) a.k.a. Function(s)
    func addToNewValue(digit : String) {
        self.providedValue += digit
    }
    
    func multiply() {
        
        // Set the operation
        operation = Operation.multiplication
        
        // If new value is first value entered, it becomes currentValue right away
        if computedValue == nil {
            makeNewValueCurrentValue()
        } else if providedValue == "" {
            // do nothing
        } else {
            // If there is already a current value, multiply by new value
            equals()
        }
    }
    
    func equals() {
        if operation == .multiplication {
            computedValue = computedValue! * Double(providedValue)!
        }
        operation = nil
        providedValue = ""
    }
    
    func clear() {
        // Reset everthing
        operation = nil
        providedValue = ""
        computedValue = nil
    }
    
    func makeNewValueCurrentValue() {
        computedValue = Double(providedValue)
        providedValue = ""
    }
}
