import UIKit

protocol AbsMapView: MapView {
    associatedtype T;
    associatedtype U: UIView;
    
    var rootView: UIView {get set}
    var annotations: [AnyHashable:T] {get set}
    var mapView: U {get set}
    
    func generatePointAnnotationTyped<A: Annotationable>(annotation: A) -> T
    
    func applyPointAnnotationToMapView(pointAnnotation : T)
    
    func removePointAnnotationToMapView(pointAnnotation : T)
    
    func setup()
}



extension AbsMapView {
    
    func setup() {
        rootView.addSubview(mapView)
    }
    
    mutating func add<T: Annotationable>(annotation: T) {
        let pointAnnotation = generatePointAnnotationTyped(annotation: annotation)
        annotations[annotation] = pointAnnotation
        applyPointAnnotationToMapView(pointAnnotation: pointAnnotation)
    }
    
    mutating func remove<T: Annotationable>(annotation: T) {
        let pointAnnotation = annotations[annotation]
        if (pointAnnotation != nil) {
            removePointAnnotationToMapView(pointAnnotation: pointAnnotation!)
            annotations[annotation] = nil;
        }
    }
}
