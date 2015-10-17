//
//  InterfaceController.swift
//  Coffee Decider WatchKit Extension
//
//  Created by ShellZero on 10/17/15.
//  Copyright © 2015 ShellZero. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    
    
    @IBOutlet var lblCoffee: WKInterfaceLabel!
    @IBOutlet var btnChoose: WKInterfaceButton!
    
    var coffeeArray = ["Latte","Cappuccino","Americano","Irish","Ice Coffee","Bubble Coffee","Vanilla Latte", "Espresso"]
    
    var buttonArray = ["Choose Coffee","Another","Try Again"]
    
    var coffeeArrayMAX : Int = 0
    var buttonArrayMAX : Int = 0
    
    var coffeeArrayRandom : Int = 0
    var buttonArrayRandom : Int = 0
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    
    @IBAction func btnChooseCoffee() {
        findMaxItemsInArray()
    }
    
    func findMaxItemsInArray(){
        coffeeArrayMAX = coffeeArray.count - 1
        buttonArrayMAX = buttonArray.count - 1
        
        randomizeTheNumbers()

    }
    
    func randomizeTheNumbers(){
        coffeeArrayRandom = Int(arc4random_uniform(UInt32(coffeeArrayMAX)))
        buttonArrayRandom = Int(arc4random_uniform(UInt32(buttonArrayMAX)))
        
        printCoffee()
        printButton()
    }
    
    func printCoffee(){
        lblCoffee.setText("\(coffeeArray[coffeeArrayRandom])")
    }
    
    func printButton(){
        btnChoose.setTitle("\(buttonArray[buttonArrayRandom])")
    }
}
