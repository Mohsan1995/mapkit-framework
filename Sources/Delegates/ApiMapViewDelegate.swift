import UIKit

class ApiMapViewDelegate: NSObject {
    var mapViewCtrl: MapViewController

    required init(mapViewCtrl: MapViewController) {
        self.mapViewCtrl = mapViewCtrl
    }
}
