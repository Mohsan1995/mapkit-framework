import UIKit

class CustomAnnotation: Annotation {
    
    func getIcon() -> UIImage {
        preconditionFailure("This method must be overridden")
    }
}
