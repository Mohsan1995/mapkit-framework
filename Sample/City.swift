import UIKit
import CoreLocation

class City: Annotationable {
    var name: String
    var country: String
    var lat: Double
    var lon: Double
    
    var coordinate: CLLocationCoordinate2D?
    
    init(name: String, country: String, lat: Double, lon: Double) {
        self.name = name
        self.country = country
        self.lat = lat
        self.lon = lon
    }
    
    
    override func getCoord() -> CLLocationCoordinate2D {
        if (coordinate == nil) {
            coordinate = CLLocationCoordinate2D.init(latitude: lat, longitude: lon)
        }
        return coordinate!
    }
    
    override func getTitle() -> String {
        return self.name;
    }
    
    override var hashValue: Int {
        return name.hashValue * country.hashValue
    }
    
    static func == (lhs: City, rhs: City) -> Bool {
        return lhs === rhs
    }
}
