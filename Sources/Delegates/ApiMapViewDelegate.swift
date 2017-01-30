import UIKit

class ApiMapViewDelegate: NSObject {
    var controller: MapViewController

    required init(controller: MapViewController) {
        self.controller = controller
    }
}
