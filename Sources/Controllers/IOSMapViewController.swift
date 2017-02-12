import UIKit
import MapKit

class IOSMapViewController: ApiMapViewController<MKPointAnnotation, MKMapView, IOSMapViewDelegate> {
    
    init(rootView: UIView, frame: CGRect) {
        super.init(
            rootView: rootView,
            mapView: MKMapView(frame: frame)
        )
    }
    
    override func generatePointAnnotationTyped(annotation: Annotationable) -> MKPointAnnotation {
        let pointAnnoation = MKPointAnnotation()
        pointAnnoation.title = annotation.getTitle()
        pointAnnoation.subtitle = annotation.getSubTitle()
        pointAnnoation.coordinate = annotation.getCoord()
        
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
    
    override func directionRoad(source: Annotationable, destination: Annotationable, completionHandler:@escaping (RouteRequest, Error?) -> Void){
        let directionRequest = MKDirectionsRequest();
        
        
        let sourcePlaceMaker = MKPlacemark(coordinate: source.getCoord())
        let destinationPlaceMaker = MKPlacemark(coordinate: destination.getCoord())
        
        directionRequest.source = MKMapItem(placemark: sourcePlaceMaker)
        directionRequest.destination = MKMapItem(placemark: destinationPlaceMaker)
        directionRequest.transportType = .automobile
        
        // Calculate the direction
        let directions = MKDirections(request: directionRequest)
        
        // 8.
        directions.calculate {
            (response, error) -> Void in
            
            guard let response = response else {
                if let error = error {
                    print("Error: \(error)")
                    completionHandler(MKRoute(), error)
                }
                
                return
            }
            
            let route = response.routes[0]
            
            
            
            self.mapView.add((route.polyline), level: MKOverlayLevel.aboveRoads)
            
            let rect = route.polyline.boundingMapRect
            self.mapView.setRegion(MKCoordinateRegionForMapRect(rect), animated: true)
            
            
            completionHandler(route, nil)
        }
    }
    
    override func setMapType(type: MapType) {
        switch type {
        case .Normal:
            mapView.mapType = .standard
        case .Satellite:
            mapView.mapType = .satellite
        case .Hybrid:
            mapView.mapType = .hybrid
        }
    }
}
