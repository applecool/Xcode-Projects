//
//  InterfaceController.swift
//  GeoLocation WatchKit Extension
//
//  Created by ShellZero on 10/17/15.
//  Copyright © 2015 ShellZero. All rights reserved.
//

import WatchKit
import Foundation
import CoreLocation


class InterfaceController: WKInterfaceController, CLLocationManagerDelegate {
    
    //important addition
    let locationManager = CLLocationManager()
    
    
    @IBOutlet var lblLocation: WKInterfaceLabel!

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
    
    @IBAction func btnFindLocation() {
        
        locationManager.delegate = self;
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()
        locationManager.requestLocation()
        
    }
    
    func locationManager(manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
    
        CLGeocoder().reverseGeocodeLocation(manager.location!, completionHandler: {(placemarks, error) in
            
            if placemarks!.count > 0{
                let cPlacemarks = placemarks[0] as! CLPlacemark
                self.displayLocation(cPlacemarks)
            }
            
        })
    }
        
    
    
    func displayLocation(placemark: CLPlacemark){
        locationManager.stopUpdatingLocation()
        
        let locality = placemark.locality
        let postalCode = placemark.postalCode
        let administrativeArea = placemark.administrativeArea
        let country = placemark.country
        
        lblLocation.setText("Locality:\(locality) PostalCode: \(postalCode) admin Area: \(administrativeArea) Country: \(country)")
    }

}
