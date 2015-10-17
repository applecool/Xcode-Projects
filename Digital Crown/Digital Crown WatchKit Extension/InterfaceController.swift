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
    
    var pickerItem0 : WKPickerItem = WKPickerItem()
    var pickerItem1 : WKPickerItem = WKPickerItem()
    var pickerItem2 : WKPickerItem = WKPickerItem()
    var pickerItem3 : WKPickerItem = WKPickerItem()
    var pickerItem4 : WKPickerItem = WKPickerItem()
    var pickerItem5 : WKPickerItem = WKPickerItem()
    var pickerItem6 : WKPickerItem = WKPickerItem()
    var pickerItem7 : WKPickerItem = WKPickerItem()
    var pickerItem8 : WKPickerItem = WKPickerItem()
    
    var sliderValue : Float = 0
    
    var tapticEngineNumber : Int = 0
    var pickerNumberValue : Int = 0
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        populatePicker()
        
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
        sliderValue = value
        tapticEngineNumber = Int(sliderValue)
        sliderPickerUpdate()
    }
    
    
    @IBAction func picPickerAction(value: Int) {
        pickerNumberValue = value
        tapticEngineNumber = value
        triggerTapticEngine()
    }
    
    func populatePicker(){
        pickerItem0.title = String(stringArray[0])
        pickerItem1.title = String(stringArray[1])
        pickerItem2.title = String(stringArray[2])
        pickerItem3.title = String(stringArray[3])
        pickerItem4.title = String(stringArray[4])
        pickerItem5.title = String(stringArray[5])
        pickerItem6.title = String(stringArray[6])
        pickerItem7.title = String(stringArray[7])
        pickerItem8.title = String(stringArray[8])
        
        picPicker.setItems([pickerItem0,pickerItem1,pickerItem2,pickerItem3,pickerItem4,pickerItem5,pickerItem6,pickerItem7,pickerItem8])

    }
    
    func sliderPickerUpdate(){
        picPicker.setSelectedItemIndex(Int(sliderValue))
        
    }
    
    func triggerTapticEngine(){
        if tapticEngineNumber == 0{
            
        }
    }
    

}
