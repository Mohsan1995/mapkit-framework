import UIKit
import GoogleMaps

class GoogleMapViewController: ApiMapViewController<GMSMarker, GMSMapView, GoogleMapViewDelegate> {
    
    init(rootView: UIView, frame: CGRect) {
        super.init(
            rootView: rootView,
            mapView: GMSMapView(frame: frame)
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
    
    override func setMapType(type: MapType) {
        switch type {
        case .Normal:
            mapView.mapType = GoogleMaps.kGMSTypeNormal
        case .Satellite:
            mapView.mapType = GoogleMaps.kGMSTypeSatellite
        case .Hybrid:
            mapView.mapType = GoogleMaps.kGMSTypeHybrid
        }
    }
}
