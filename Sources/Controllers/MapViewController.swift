import UIKit
import CoreLocation

protocol MapViewController {
    var delegate: MapViewDelegate? {get set}
    func remove(annotation: Annotationable)
    
    func add(annotation: Annotationable)
    
    func getAnnotationByCoor(coor: CLLocationCoordinate2D) -> Annotationable?
    
    func directionRoad(source: Annotationable, destination: Annotationable, completionHandler:@escaping (RouteRequest, Error?) -> Void)
    
}
