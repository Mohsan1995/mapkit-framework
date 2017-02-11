import UIKit
import CoreLocation

class City: Annotationable {
    var name: String
    var zip: String
    var country: String
    var lat: Double
    var lon: Double
    
    var coordinate: CLLocationCoordinate2D?
    
    init(name: String, zip: String, country: String, lat: Double, lon: Double) {
        self.name = name
        self.zip = zip
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
    
    override func getSubTitle() -> String {
        return self.zip.components(separatedBy: " ")[0];
    }
    
    override var hashValue: Int {
        return name.hash
    }
    
    static func == (lhs: City, rhs: City) -> Bool {
        return lhs === rhs
    }
}
