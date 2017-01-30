import UIKit
import CoreLocation

class Annotationable: Equatable, Hashable {
    func getCoor() -> CLLocationCoordinate2D {
        preconditionFailure("This method must be overridden")
    }
    func getTitle() -> String {
        preconditionFailure("This method must be overridden")
    }
    
    
    var hashValue: Int {
        return (getCoor().latitude.hashValue*getCoor().longitude.hashValue)+getTitle().hashValue
    }
    
    static func == (lhs: Annotationable, rhs: Annotationable) -> Bool {
        return lhs === rhs
    }
}
