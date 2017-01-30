import UIKit
import MapKit

class IOSMapViewDelegate: ApiMapViewDelegate, MKMapViewDelegate {
    
    func mapView(_ mapView: MKMapView, didSelect view: MKAnnotationView) {
        //print("IOSMapViewDelegate MKDelegate didSelect")
        if let annotation = mapViewCtrl.getAnnotationByCoor(coor: view.annotation!.coordinate) {
            mapViewCtrl.delegate?.onSelectAnnotation(annotation: annotation)
        }
    }
    
    
    func mapView(_ mapView: MKMapView, didDeselect view: MKAnnotationView) {
        //print("IOSMapViewDelegate MKDelegate didDeselect")
        if let annotation = mapViewCtrl.getAnnotationByCoor(coor: view.annotation!.coordinate) {
            mapViewCtrl.delegate?.onUnselectAnnotation(annotation: annotation)
        }
    }
}
