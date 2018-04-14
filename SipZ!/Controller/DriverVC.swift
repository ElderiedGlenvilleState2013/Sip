//
//  DriverVC.swift
//  SipZ!
//
//  Created by McKinney family  on 4/14/18.
//  Copyright © 2018 FasTek Technologies. All rights reserved.
//

import UIKit
import CoreLocation
import MapKit

class DriverVC: UIViewController, CLLocationManagerDelegate, MKMapViewDelegate  {

    
    @IBOutlet var map: MKMapView!
    
    let locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()

      locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let userLocation: CLLocation = locations[0]
        
        let latitude = userLocation.coordinate.latitude
        
        let longitude = userLocation.coordinate.longitude
        
        let latDeltas: CLLocationDegrees = 0.05
       
        let lonDeltas: CLLocationDegrees = 0.05
        
        let span = MKCoordinateSpan(latitudeDelta: latDeltas, longitudeDelta: lonDeltas)
        
        let location = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
        
        let region = MKCoordinateRegion(center: location, span: span)
        
        CLGeocoder().reverseGeocodeLocation(userLocation) { (placemarks, error) in
            if error != nil {
                print(error)
            } else {
                if let placemark = placemarks?[0] {
                  
                    var subThoroughfare = ""
                    
                    if placemark.subThoroughfare != nil {
                        
                        subThoroughfare = placemark.subThoroughfare!
                    }
                    
                    var thoroughfare = ""
                    
                    if placemark.thoroughfare != nil {
                        
                        thoroughfare = placemark.thoroughfare!
                    }
                    var subLocality = ""
                    
                    if placemark.subLocality != nil {
                        
                        subLocality = placemark.subLocality!
                    }
                    var subAdminstrativeArea = ""
                    
                    if placemark.subAdministrativeArea != nil {
                        
                        subAdminstrativeArea = placemark.subAdministrativeArea!
                    }
                    var postalCode = ""
                    
                    if placemark.postalCode != nil {
                        
                        postalCode = placemark.postalCode!
                    }
                    var country = ""
                    
                    if placemark.country != nil {
                        
                        country = placemark.country!
                    }
                    
                    print(subThoroughfare + thoroughfare + "\n" + subLocality + "\n" + subAdminstrativeArea + "\n" + postalCode + "\n" + country)
                }
            }
        
        }
        
        self.map.setRegion(region, animated: true)
        
        
        
        
        
    }
}
