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
    
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        guard !(annotation is MKUserLocation) else {
            return nil
        }
        
        let annotationIdentifier = "AnnotationIdentifier"
        let annotationCustomIdentifier = "AnnotationCustomIdentifier"
        
        if let annotationO = controller.getAnnotationByCoor(coor: annotation.coordinate) {
            var annotationView: MKAnnotationView?
            
            if annotationO is CustomAnnotation {
                if let dequeuedAnnotationView = mapView.dequeueReusableAnnotationView(withIdentifier: annotationCustomIdentifier) {
                    annotationView = dequeuedAnnotationView
                    annotationView?.annotation = annotation
                } else {
                    annotationView = MKAnnotationView(annotation: annotation, reuseIdentifier: annotationIdentifier)
                    annotationView?.canShowCallout = true
                }
                annotationView?.image = (annotationO as! CustomAnnotation).getIcon()
            } else {
                var annotationView: MKAnnotationView?
                if let dequeuedAnnotationView = mapView.dequeueReusableAnnotationView(withIdentifier: annotationIdentifier) {
                    annotationView = dequeuedAnnotationView
                    annotationView?.annotation = annotation
                } else {
                    annotationView = MKPinAnnotationView(annotation: annotation, reuseIdentifier: annotationIdentifier)
                    (annotationView as! MKPinAnnotationView).pinTintColor = MKPinAnnotationView.greenPinColor()
                    annotationView?.canShowCallout = true
                }
            }
            
            return annotationView
        }
        
        return nil
    }
}
