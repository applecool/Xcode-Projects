//
//  InterfaceController.swift
//  ISSTracker WatchKit Extension
//
//  Created by ShellZero on 10/17/15.
//  Copyright © 2015 ShellZero. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    
    
    @IBOutlet var mapElement: WKInterfaceMap!
    
    @IBOutlet var lblOutput: WKInterfaceLabel!
    
    let url = NSURL(string: "http://api.open-notify.org/iss-pass.json?lat=LAT&lon=LON")
    
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

    @IBAction func getDistanceFromMe() {
    }
    
    
}
