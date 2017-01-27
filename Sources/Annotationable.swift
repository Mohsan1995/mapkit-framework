import UIKit
import CoreLocation

protocol Annotationable: class, Equatable, Hashable {
    func getCoor() -> CLLocationCoordinate2D;
    func getTitle() -> String;
}
