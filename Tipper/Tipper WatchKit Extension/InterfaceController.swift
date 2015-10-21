//
//  InterfaceController.swift
//  Tipper WatchKit Extension
//
//  Created by ShellZero on 10/17/15.
//  Copyright © 2015 ShellZero. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    
    @IBOutlet var lblTip: WKInterfaceLabel!
    @IBOutlet var lblTotal: WKInterfaceLabel!
    
    @IBOutlet var btnMealTotal: WKInterfaceButton!
    @IBOutlet var btnTipTotal: WKInterfaceButton!
    
    var mealTotal : Double = 0
    var tipTotal : Double = 0
    //update the array with more frequent and general values
    var mealCostArray = [10.0, 15.0, 20.0, 25.0, 30.0, 35.0, 40.0, 45.0, 50.0, 80.0, 100.0,150.0, 180.0, 200.0]
    var tipArray = [0.1, 0.15, 0.2, 0.25, 0.3]
    
    var buttonMealNumber : Int = 0
    var buttonTipNumber : Int = 0
    
    
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
    
    
    @IBAction func btnMealTotalAction() {
        buttonNumberMealTotal()
        calculateTotal()
    }
    
    @IBAction func btnTipTotalAction() {
        buttonNumberTipTotal()
        calculateTotal()
    }
    
    func buttonNumberMealTotal(){
        buttonMealNumber = buttonMealNumber + 1
        
        if buttonMealNumber == (mealCostArray.count - 1){
            buttonMealNumber = 0
        }
        
        printButtons()
    }
    
    func buttonNumberTipTotal(){
        buttonTipNumber = buttonTipNumber + 1
        
        if buttonTipNumber == (tipArray.count - 1){
            buttonTipNumber = 0
        }
        
        printButtons()
    }
    
    //Fix needed.
    func printButtons(){
        var formatMeal = String(format: "%0.0f", mealCostArray[buttonMealNumber])
        var formatTip = String(format: "%0.0f", tipArray[buttonTipNumber]*100)
        
        btnMealTotal.setTitle("Meal Total: $\(formatMeal)")
        btnTipTotal.setTitle("Tip Total: \(formatTip)%")
    }
    
    func calculateTotal(){
        tipTotal = mealCostArray[buttonMealNumber] * tipArray[buttonTipNumber]
        mealTotal = tipTotal + mealCostArray[buttonMealNumber]
        printTip()
        
    }
    
    func printTip(){
        var formatTip = String(format: "%0.2f", tipTotal)
        var formatMeal = String(format: "%0.2f", mealTotal)
        
        lblTip.setText("Tip: $\(formatTip)")
        lblTotal.setText("Total: $\(formatMeal)")
        
    }
    

}
