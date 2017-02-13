import UIKit
import GoogleMaps
import SwiftyJSON

class GoogleMapViewController: ApiMapViewController<GMSMarker, GMSMapView, GoogleMapViewDelegate> {
    
    init(rootView: UIView, frame: CGRect) {
        super.init(
            rootView: rootView,
            mapView: GMSMapView(frame: frame)
        )
    }
    
    override func generatePointAnnotationTyped(annotation: Annotationable) -> GMSMarker {
        let pointAnnoation = GMSMarker(position: annotation.getCoord())
        pointAnnoation.title = annotation.getTitle()
        pointAnnoation.snippet = annotation.getSubTitle()

        return pointAnnoation
    }
    
    override func applyPointAnnotationToMapView(pointAnnotation : GMSMarker) {
        pointAnnotation.map = mapView
    }
    
    override func removePointAnnotationToMapView(pointAnnotation : GMSMarker) {
        pointAnnotation.map = nil
    }
    
    override func applyApiDelegate() {
        mapView.delegate = apiDelegate!
    }
    
    override func directionRoad(source: Annotationable, destination: Annotationable, completionHandler:@escaping (RouteRequest, Error?) -> Void) {
        let url: String = String.init(format: "%@?origin=%f,%f&destination=%f,%f&sensor=true&key=%@",
                    "https://maps.googleapis.com/maps/api/directions/json",
                    source.getCoord().latitude,
                    source.getCoord().longitude,
                    destination.getCoord().latitude,
                    destination.getCoord().longitude,
                    AppDelegate.googleMapsApiKey)
        
        var request = URLRequest(url: URL(string: url)!)
        request.httpMethod = "GET"
        let session = URLSession.shared
        
        session.dataTask(with: request) {data, response, err in
            print("Entered the completionHandler")
            guard err == nil else {
                print(err!)
                return
            }
            guard let data = data else {
                print("Data is empty")
                return
            }
            let json = JSON(data: data)
            DispatchQueue.main.async {
                for step in json["routes"][0]["legs"][0]["steps"].arrayValue {
                    let path: GMSPath = GMSPath(fromEncodedPath: step["polyline"]["points"].stringValue)!
                    let singleLine: GMSPolyline = GMSPolyline(path: path)
                    singleLine.strokeColor = UIColor.green;
                    singleLine.strokeWidth = 2
                    singleLine.map = self.mapView;
                }
            }
        }.resume()
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
