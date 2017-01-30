import UIKit

protocol MapViewDelegate {
    func onSelectAnnotation(annotation: Annotationable)
    
    func onUnselectAnnotation(annotation: Annotationable)
}
