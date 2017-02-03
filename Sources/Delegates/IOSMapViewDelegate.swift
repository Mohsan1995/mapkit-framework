import UIKit
import MapKit

class IOSMapViewDelegate: ApiMapViewDelegate, MKMapViewDelegate {
    
    func mapView(_ mapView: MKMapView, didSelect view: MKAnnotationView) {
        //print("IOSMapViewDelegate MKDelegate didSelect")
        if let annotation = controller.getAnnotationByCoor(coor: view.annotation!.coordinate) {
            controller.delegate?.onSelectAnnotation(annotation: annotation)
        }
    }
    
    
    func mapView(_ mapView: MKMapView, didDeselect view: MKAnnotationView) {
        //print("IOSMapViewDelegate MKDelegate didDeselect")
        if let annotation = controller.getAnnotationByCoor(coor: view.annotation!.coordinate) {
            controller.delegate?.onUnselectAnnotation(annotation: annotation)
        }
    }
    
    func mapView(_ mapView: MKMapView, rendererFor overlay: MKOverlay) -> MKOverlayRenderer {
        let renderer = MKPolylineRenderer(overlay: overlay)
        renderer.strokeColor = UIColor.red
        renderer.lineWidth = 4.0
        
        return renderer
    }
}
