import UIKit
import CoreLocation

protocol MapViewController {
    var delegate: MapViewDelegate? {get set}
    func remove(annotation: Annotation)
    
    func add(annotation: Annotation)
    
    func getAnnotationByCoor(coor: CLLocationCoordinate2D) -> Annotation?
    
    func directionRoad(source: Annotation, destination: Annotation, completionHandler:@escaping (RouteRequest, Error?) -> Void)
    
    func setMapType(type: MapType)
}
