//
//  InterfaceController.swift
//  FirstTestApp WatchKit Extension
//
//  Created by ShellZero on 10/13/15.
//  Copyright © 2015 ShellZero. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet var btnButton: WKInterfaceButton!
    @IBOutlet var swtSwitch: WKInterfaceSwitch!
    @IBOutlet var sldSlider: WKInterfaceSlider!
    @IBOutlet var lblLabel: WKInterfaceLabel!
    
    var btnCount : Int = 1
    
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

    @IBAction func btnButtonAction() {
        if btnCount == 1{
        changeTextonClick()
        }
        
    }
    
    @IBAction func swtSwitchAction(value: Bool) {
        changeTextonSlide()
    }
    
    @IBAction func sldSliderAction(value: Float) {
    }
    
    func changeTextonSlide(){
        btnButton.setTitle("Apple")
        lblLabel.setText("Rocks")
    }
    
    func changeTextonClick(){
        btnButton.setTitle("Love")
        lblLabel.setText("Apple")
    }
    
}
