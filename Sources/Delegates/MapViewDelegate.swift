import UIKit

protocol MapViewDelegate {
    func onSelectAnnotation(annotation: Annotation)
    
    func onUnselectAnnotation(annotation: Annotation)
}
