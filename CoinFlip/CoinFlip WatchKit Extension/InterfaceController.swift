//
//  InterfaceController.swift
//  CoinFlip WatchKit Extension
//
//  Created by ShellZero on 10/16/15.
//  Copyright © 2015 ShellZero. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    
    
    @IBOutlet var lblCoin: WKInterfaceLabel!
    
    var coinValue : Int = 0
    var coinState : String =  ""
    
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
    
    
    @IBAction func btnFlip() {
        flipTheCoin()
    }
    
    func flipTheCoin(){
        coinValue = Int(arc4random_uniform(2))
        setCoinState()
    }
    
    func setCoinState(){
        
        if coinValue == 0{
            coinState = "Heads"
        }else if coinValue == 1{
            coinState = "Tails"
        }
        
        printCoinState()
    }
    
    func printCoinState(){
        //lblCoin.setText(coinState)
        lblCoin.setText("\(coinState)")
    }

}
