import UIKit
import CoreLocation
import MapKit

class ApiMapViewController<P: PointAnnotation, V: UIView, D: ApiMapViewDelegate>: NSObject, MapViewController {
    
    var rootView: UIView!
    var mapView: V!
    
    var annotations: [Annotation:P] = [:]
    
    var apiDelegate: D?
    var delegate: MapViewDelegate? = nil {
        willSet(newDelegate) {
            if apiDelegate == nil {
                apiDelegate = D(controller: self)
                applyApiDelegate()
            }
        }
    }
    
    
    init(rootView: UIView, mapView: V) {
        self.rootView = rootView
        self.mapView = mapView
        self.rootView.addSubview(self.mapView)
    }
    
    func add(annotation: Annotation) {
        let pointAnnotation = generatePointAnnotationTyped(annotation: annotation)
        annotations[annotation] = pointAnnotation
        applyPointAnnotationToMapView(pointAnnotation: pointAnnotation)
    }
    
    func remove(annotation: Annotation) {
        let pointAnnotation = annotations[annotation]
        if (pointAnnotation != nil) {
            removePointAnnotationToMapView(pointAnnotation: pointAnnotation!)
            annotations[annotation] = nil;
        }
    }
    
    func getAnnotationByCoor(coor: CLLocationCoordinate2D) -> Annotation? {
        for (annotation, _) in annotations {
            if (annotation.getCoord().latitude == coor.latitude && annotation.getCoord().longitude == coor.longitude) {
                return annotation
            }
        }
        return nil
    }
    
    func generatePointAnnotationTyped(annotation: Annotation) -> P {
        preconditionFailure("This method must be overridden")
    }
    
    func applyPointAnnotationToMapView(pointAnnotation : P) {
        preconditionFailure("This method must be overridden")
    }
    
    func removePointAnnotationToMapView(pointAnnotation : P) {
        preconditionFailure("This method must be overridden")
    }
    
    func applyApiDelegate() {
        preconditionFailure("This method must be overridden")
    }
    
    func directionRoad(source: Annotation, destination: Annotation, completionHandler:@escaping (RouteRequest, Error?) -> Void){
        preconditionFailure("This method must be overridden")
    }
    
    func setMapType(type: MapType) {
        preconditionFailure("This method must be overridden")
    }
}
