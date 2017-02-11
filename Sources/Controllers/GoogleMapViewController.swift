import UIKit
import GoogleMaps

class GoogleMapViewController: ApiMapViewController<GMSMarker, GMSMapView, GoogleMapViewDelegate> {
    
    init(rootView: UIView, frame: CGRect) {
        let mapView = GMSMapView(frame: frame)
        mapView.mapType = GoogleMaps.kGMSTypeNormal
        super.init(
            rootView: rootView,
            mapView: mapView
        )
    }
    
    override func generatePointAnnotationTyped(annotation: Annotationable) -> GMSMarker {
        let pointAnnoation = GMSMarker(position: annotation.getCoord())
        pointAnnoation.title = annotation.getTitle() + " " + annotation.getSubTitle()

        return pointAnnoation
    }
    
    override func applyPointAnnotationToMapView(pointAnnotation : GMSMarker) {
        pointAnnotation.map = mapView;
    }
    
    
    override func removePointAnnotationToMapView(pointAnnotation : GMSMarker) {
        pointAnnotation.map = nil
    }
    
    override func applyApiDelegate() {
        mapView.delegate = apiDelegate!
    }
    
    override func directionRoad(source: Annotationable, destination: Annotationable, completionHandler:@escaping (RouteRequest, Error?) -> Void) {
        
    }
}
