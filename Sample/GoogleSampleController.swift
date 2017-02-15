import UIKit

class GoogleSampleController: AbsSampleController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func createMapViewController() -> MapViewController {
        return GoogleMapViewController(rootView: self.view, frame: UIScreen.main.bounds)
    }
}
