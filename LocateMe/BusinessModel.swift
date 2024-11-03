//
//  BusinessModel.swift
//  LocateMe
//
//  Created by Adrian Talbot on 03/11/2024.
//

import Foundation
import CoreLocation

@Observable
class BusinessModel : NSObject, CLLocationManagerDelegate {
    var locationManager = CLLocationManager()
    
    func getLocation() {
        if (locationManager.authorizationStatus == .authorizedWhenInUse) {
            locationManager.requestLocation()
        } else {
            locationManager.requestWhenInUseAuthorization()
        }
    }
    
    
    override init() {
        super.init()
        
        locationManager.delegate = self
    }
    
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: any Error) {
        print(error)
    }
    
    func locationManagerDidChangeAuthorization(_ manager: CLLocationManager) {
        if (manager.authorizationStatus == .authorizedWhenInUse) {
            manager.requestLocation()
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let myLocation = locations.last?.coordinate
        
        print(myLocation!)
        
        manager.stopUpdatingLocation()
    }
    
}
