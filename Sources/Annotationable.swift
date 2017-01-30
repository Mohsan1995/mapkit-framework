import UIKit
import CoreLocation

class Annotationable: Equatable, Hashable {
    
    func getCoord() -> CLLocationCoordinate2D {
        preconditionFailure("This method must be overridden")
    }
    func getTitle() -> String {
        preconditionFailure("This method must be overridden")
    }
    
    
    var hashValue: Int {
        return (getCoord().latitude.hashValue*getCoord().longitude.hashValue)+getTitle().hashValue
    }
    
    static func == (lhs: Annotationable, rhs: Annotationable) -> Bool {
        return lhs === rhs
    }
}
