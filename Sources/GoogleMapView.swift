import UIKit
import GoogleMaps

class GoogleMapView: AbsMapView {
    typealias T = GMSMarker

    var rootView: UIView
    var mapView: GMSMapView
    var annotations: [AnyHashable:T] = [:]
    
    init(view: UIView) {
        self.rootView = view
        self.mapView = GMSMapView.init(frame: view.bounds)
        self.setup()
    }
    
    func generatePointAnnotationTyped<T : Annotationable>(annotation: T) -> GMSMarker {
        let pointAnnoation = GMSMarker(position: annotation.getCoor())
        pointAnnoation.title = annotation.getTitle()

        return pointAnnoation
    }
    
    func applyPointAnnotationToMapView(pointAnnotation : GMSMarker) {
        pointAnnotation.map = mapView;
    }
    
    
    func removePointAnnotationToMapView(pointAnnotation : GMSMarker) {
        pointAnnotation.map = nil;
    }
}
