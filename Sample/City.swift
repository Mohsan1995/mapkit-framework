//
//  City.swift
//  mapkit-framework
//
//  Created by Quentin on 27/01/2017.
//  Copyright © 2017 ESGI. All rights reserved.
//

import UIKit
import CoreLocation

class City: Annotationable {
    var name: String
    var country: String;
    var lat: Double;
    var lon: Double;
    
    init(name: String, country: String, lat: Double, lon: Double) {
        self.name = name;
        self.country = country;
        self.lat = lat;
        self.lon = lon;
    }
    
    
    
    func getCoor() -> CLLocationCoordinate2D {
        return CLLocationCoordinate2D.init(latitude: lat, longitude: lon);
    }
    
    
    func getTitle() -> String {
        return self.country;
    }
    
    
    var hashValue: Int {
        return (name.hash)
    }
    
    static func == (lhs: City, rhs: City) -> Bool {
        return lhs === rhs
    }
}
