//
//  storeViewController.swift
//  SipZ!
//
//  Created by McKinney family  on 4/4/18.
//  Copyright © 2018 FasTek Technologies. All rights reserved.
//

import UIKit
import CoreLocation

class storeViewController: UIViewController, CLLocationManagerDelegate {

    var locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()

      locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
    }

    @IBAction func unwindFromTermsAndConditions(unwindSegue: UIStoryboardSegue) {
        
        
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        let userLocation: CLLocation = locations[0]
        
        let latitude = userLocation.coordinate.latitude
        
        print(locations)
        
    }

}
