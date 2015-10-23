//
//  InterfaceController.swift
//  ImageViewer WatchKit Extension
//
//  Created by ShellZero on 10/17/15.
//  Copyright © 2015 ShellZero. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet var sldSlider: WKInterfaceSlider!
    @IBOutlet var imgImage: WKInterfaceImage!
    
    //needed png. 30X30
    var numberOfImage : Float = 0
    var imageFileTypeJPG : String = "jpg"
    
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        displayImage()
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

    @IBAction func sldImageSliderAction(value: Float) {
        numberOfImage = value
        displayImage()
    }
    //The images doesnt fit on the screen. Fix needed
    func displayImage(){
        imgImage.setImage(UIImage(named: "\(numberOfImage)" + imageFileTypeJPG))
    }
    
    
    
}
