import UIKit
import GoogleMaps

class GoogleMapViewDelegate: ApiMapViewDelegate, GMSMapViewDelegate {
    var markerSelected: GMSMarker?
    
    func mapView(_ mapView: GMSMapView, didTap marker: GMSMarker) -> Bool {
        if markerSelected != nil {
            if let annotation = controller.getAnnotationByCoor(coor: markerSelected!.position) {
                controller.delegate?.onUnselectAnnotation(annotation: annotation)
            }
        }
        markerSelected = marker
        
        if let annotation = controller.getAnnotationByCoor(coor: marker.position) {
            controller.delegate?.onSelectAnnotation(annotation: annotation)
        }
        
        return false
    }
    
    func mapView(_ mapView: GMSMapView, didCloseInfoWindowOf marker: GMSMarker) {
        if markerSelected == marker {
            if let annotation = controller.getAnnotationByCoor(coor: marker.position) {
                controller.delegate?.onUnselectAnnotation(annotation: annotation)
            }
            markerSelected = nil
        }
    }
}
