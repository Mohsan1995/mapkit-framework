import UIKit

class IosSampleController: AbsSampleController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func createMapViewController() -> MapViewController {
        return IOSMapViewController(rootView: self.view, frame: UIScreen.main.bounds)
    }
    
}
