//
//  InterfaceController.swift
//  MapsImplementation WatchKit Extension
//
//  Created by ShellZero on 10/17/15.
//  Copyright © 2015 ShellZero. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    
    
    @IBOutlet var mapMaps: WKInterfaceMap!
    
    var location = CLLocationCoordinate2D(latitude: 40.4317, longitude: -86.9158)
    
    var span = MKCoordinateSpan(latitudeDelta: 1, longitudeDelta: 1)

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        mapMaps.setRegion(MKCoordinateRegion(center: location, span: span))
        mapMaps.addAnnotation(location, withPinColor: WKInterfaceMapPinColor.Green)
        
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
        
        buttonPress()
    }
    
    func buttonPress(){
        
    }

}
