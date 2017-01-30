import UIKit
import MapKit

class IOSMapViewController: ApiMapViewController<MKPointAnnotation, MKMapView, IOSMapViewDelegate> {
    
    init(rootView: UIView) {
        super.init(
            rootView: rootView,
            mapView: MKMapView.init(frame: rootView.bounds)
        )
    }
    
    override func generatePointAnnotationTyped(annotation: Annotationable) -> MKPointAnnotation {
        let pointAnnoation = MKPointAnnotation()
        pointAnnoation.title = annotation.getTitle()
        pointAnnoation.coordinate = annotation.getCoor()
        
        return pointAnnoation
    }
    
    override func applyPointAnnotationToMapView(pointAnnotation : MKPointAnnotation) {
        mapView.addAnnotation(pointAnnotation)
    }
    
    
    override func removePointAnnotationToMapView(pointAnnotation : MKPointAnnotation) {
        mapView.removeAnnotation(pointAnnotation)
    }
    
    override func applyApiDelegate() {
        mapView.delegate = apiDelegate!
    }
}
