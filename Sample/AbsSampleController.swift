import UIKit

class AbsSampleController: UIViewController, MapViewDelegate {

    var mapView: MapViewController?
    var annotations: [Annotation]
    var citySource: Annotation
    var cityDestination: Annotation
    
    init(annotations: [Annotation], citySource: Annotation, cityDestination: Annotation) {
        self.annotations = annotations;
        self.citySource = citySource
        self.cityDestination = cityDestination
        
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.mapView = createMapViewController()
        self.mapView?.setMapType(type: .Hybrid)
        mapView?.delegate = self
        
        for annotation in annotations {
            mapView?.add(annotation: annotation)
        }
        
        mapView?.directionRoad(source: citySource, destination: cityDestination, completionHandler: { routes, error in
            
        })
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func onSelectAnnotation(annotation: Annotation) {
        print("onSelectAnnotation")
        print(annotation.getTitle())
    }
    
    func onUnselectAnnotation(annotation: Annotation) {
        print("onUnselectAnnotation")
        print(annotation.getTitle())
    }
    
    func createMapViewController() -> MapViewController {
        preconditionFailure("This method must be overridden")
    }
    
}
