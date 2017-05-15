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
        // check operation type
        
        
        if operation == .multiplication {
            computedValue = computedValue! * Double(providedValue)!
        } else if (operation == Operation.division) {
            computedValue = computedValue!/Double(providedValue)!
        } else if (operation == Operation.addition) {
            computedValue = computedValue! + Double(providedValue)!
        } else if (operation == Operation.subtraction) {
            computedValue = computedValue! - Double(providedValue)!
        } else if (operation == Operation.percentage){
            if computedValue != nil {
                computedValue = computedValue! * (0.01)
            } else {
                computedValue = 0
            }
        } else if (operation == Operation.plusMinus) {
            if computedValue != nil {
                computedValue = computedValue! * (-1)
            } else {
                computedValue = 0
            }
            
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
    
    func updateState() {
        if computedValue == nil {
            makeNewValueCurrentValue()
        } else {
            equals()
        }
    }
    // the function that carries out when the divide button is pressed
    func divide()  {
        // Set the operation
        operation = Operation.division
        
        // If new value is first value entered, it becomes currentValue right away
        if computedValue == nil {
            makeNewValueCurrentValue()
        } else if providedValue == "" {
            // do nothing
        } else {
            // If there is already a current value, divide by new value
            equals()
        updateState()
        }
    }
    // the function that carries out when the addition button is pressed
    func add() {
        // Set the operation
        operation = Operation.addition
        
        // If new value is first value entered, it becomes currentValue right away
        if computedValue == nil {
            makeNewValueCurrentValue()
        } else if providedValue == "" {
            // do nothing
        } else {
            // If there is already a current value, add by new value
            equals()
        updateState()
        }
    }
    // the function that carries out when the subtract button is pressed
    func subtract() {
        // Set the operation
        operation = Operation.subtraction
        // If new value is first value entered, it becomes currentValue right away
        if computedValue == nil {
            makeNewValueCurrentValue()
        } else if providedValue == "" {
             // do nothing
        } else {
             // If there is already a current value, subtract by new value
            equals()
            updateState()
        }
    }
    // the function that carries out when the percentage button is pressed
    func percentage() {
        // Set the operation
        operation = Operation.percentage
        
        updateState()
    }
    // the function that carries out when the plus-minus button is pressed
    func plusMinus() {
        // Set the operation
        operation = Operation.plusMinus
        //detect state
        if providedValue == ""{
            //store in variable
            if var temp = computedValue {
                //multiply by -1
                temp = temp * -1
                //return to provided value 
                providedValue = String(format: "%g", temp)
            }
        } else {
            //store provided value as double
            if var temp = Double(providedValue) {
                //multiply by -1
                temp = temp * -1
                //put back in provided value 
                providedValue = String(format: "%g", temp)
            }
        }
    
        updateState()
    }
}
