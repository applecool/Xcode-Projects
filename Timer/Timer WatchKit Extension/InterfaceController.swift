//
//  InterfaceController.swift
//  Timer WatchKit Extension
//
//  Created by ShellZero on 10/17/15.
//  Copyright © 2015 ShellZero. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    
    @IBOutlet var tmrTimer: WKInterfaceTimer!
    @IBOutlet var btnStartStop: WKInterfaceButton!
    
    var isStart = 0
    
    
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
    
    @IBAction func btnStartStopAction() {
        startTimerLog()
    }
    
    @IBAction func btnResetAction() {
        resetTimerLog()
    }
    
    func startTimerLog(){
        
        if isStart == 0 {
            tmrTimer.setDate(NSDate())
            tmrTimer.start()
            btnStartStop.setTitle("Stop")
        }
        
        if isStart == 1{
            tmrTimer.stop()
            btnStartStop.setTitle("Start")
        }
        
        isStart = isStart + 1
        
        if isStart == 2{
            isStart = 0
        }
    }
    
    func resetTimerLog(){
        
        tmrTimer.stop()
        btnStartStop.setTitle("Start")
        isStart = 0
        tmrTimer.setDate(NSDate())
        
    }
    

}
