//
//  InterfaceController.swift
//  Digital Crown WatchKit Extension
//
//  Created by ShellZero on 10/17/15.
//  Copyright © 2015 ShellZero. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    
    @IBOutlet var sldSlider: WKInterfaceSlider!
    
    @IBOutlet var picPicker: WKInterfacePicker!
    
    @IBOutlet var lblLabel: WKInterfaceLabel!
    
    var stringArray = ["Click", "DirectionDown", "DirectionUp", "Failure", "Notification", "Retry", "Start", "Stop", "Success"]
    
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        WKHapticType.Click
        WKHapticType.DirectionDown
        WKHapticType.DirectionUp
        WKHapticType.Failure
        WKHapticType.Notification
        WKHapticType.Retry
        WKHapticType.Start
        WKHapticType.Stop
        WKHapticType.Success
        
        
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
    
    @IBAction func sldSliderAction(value: Float) {
    }
    
    
    @IBAction func picPickerAction(value: Int) {
    }
    

}
