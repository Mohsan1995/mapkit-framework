import UIKit
import GoogleMaps

class GoogleMapViewController: ApiMapViewController<GMSMarker, GMSMapView, GoogleMapViewDelegate> {
    
    init(rootView: UIView) {
        super.init(
            rootView: rootView,
            mapView: GMSMapView.init(frame: rootView.bounds)
        )
    }
    
    override func generatePointAnnotationTyped(annotation: Annotationable) -> GMSMarker {
        let pointAnnoation = GMSMarker(position: annotation.getCoor())
        pointAnnoation.title = annotation.getTitle()

        return pointAnnoation
    }
    
    override func applyPointAnnotationToMapView(pointAnnotation : GMSMarker) {
        pointAnnotation.map = mapView;
    }
    
    
    override func removePointAnnotationToMapView(pointAnnotation : GMSMarker) {
        pointAnnotation.map = nil;
    }
    
    override func applyApiDelegate() {
        mapView.delegate = apiDelegate!
    }
}
