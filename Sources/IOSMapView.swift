import UIKit
import MapKit

class IOSMapView: AbsMapView {
    typealias T = MKPointAnnotation
    typealias U = MKMapView
    
    var rootView: UIView
    var mapView: MKMapView
    var annotations: [AnyHashable:T] = [:]
    
    init(view: UIView) {
        self.rootView = view
        self.mapView = MKMapView.init(frame: view.bounds)
        self.setup()
    }
    
    
    func generatePointAnnotationTyped<T : Annotationable>(annotation: T) -> MKPointAnnotation {
        let pointAnnoation = MKPointAnnotation()
        pointAnnoation.title = annotation.getTitle()
        pointAnnoation.coordinate = annotation.getCoor()
        
        return pointAnnoation
    }
    
    func applyPointAnnotationToMapView(pointAnnotation : MKPointAnnotation) {
        mapView.addAnnotation(pointAnnotation)
    }
    
    
    func removePointAnnotationToMapView(pointAnnotation : MKPointAnnotation) {
        mapView.removeAnnotation(pointAnnotation)
    }
}
