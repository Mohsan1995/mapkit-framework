import UIKit
import MapKit
import GoogleMaps

class MainViewController: UIViewController, MapViewDelegate {

    var mapView: MapViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //self.mapView = IOSMapViewController(rootView: self.view, frame: UIScreen.main.bounds)
        self.mapView = GoogleMapViewController(rootView: self.view, frame: UIScreen.main.bounds)
        self.mapView?.setMapType(type: .Hybrid)
        mapView?.delegate = self
        
        do {
            let data = "{\"cities\":[{\"name\":\"Bergerac\",\"country\":\"France\",\"zip\":\"24111 CEDEX\",\"lat\":\"44.85\",\"lon\":\"0.4833\"},{\"name\":\"Saint-Leu-la-Forêt\",\"country\":\"France\",\"zip\":\"95324 CEDEX\",\"lat\":\"49.0167\",\"lon\":\"2.25\"},{\"name\":\"Aix-les-Bains\",\"country\":\"France\",\"zip\":\"73104 CEDEX\",\"lat\":\"45.6834\",\"lon\":\"5.9224\"},{\"name\":\"Paris 16\",\"country\":\"France\",\"zip\":\"75220 CEDEX 16\",\"lat\":\"48.8637\",\"lon\":\"2.2769\"},{\"name\":\"Romans-sur-Isère\",\"country\":\"France\",\"zip\":\"26109 CEDEX\",\"lat\":\"45.0464\",\"lon\":\"5.0562\"},{\"name\":\"Auxerre\",\"country\":\"France\",\"zip\":\"89024 CEDEX\",\"lat\":\"47.8\",\"lon\":\"3.5667\"},{\"name\":\"Le Mans\",\"country\":\"France\",\"zip\":\"72015 CEDEX 2\",\"lat\":\"48\",\"lon\":\"0.2\"},{\"name\":\"Bourg-en-Bresse\",\"country\":\"France\",\"zip\":\"01004 CEDEX\",\"lat\":\"46.2057\",\"lon\":\"5.2258\"},{\"name\":\"Orléans\",\"country\":\"France\",\"zip\":\"45004 CEDEX 1\",\"lat\":\"47.9029\",\"lon\":\"1.9039\"},{\"name\":\"Seynod\",\"country\":\"France\",\"zip\":\"74604 CEDEX\",\"lat\":\"45.8855\",\"lon\":\"6.0883\"},{\"name\":\"La Roche-sur-Yon\",\"country\":\"France\",\"zip\":\"85928 CEDEX 9\",\"lat\":\"46.6667\",\"lon\":\"-1.4333\"},{\"name\":\"Avallon\",\"country\":\"France\",\"zip\":\"89204 CEDEX\",\"lat\":\"47.4833\",\"lon\":\"3.9\"},{\"name\":\"Beauvais\",\"country\":\"France\",\"zip\":\"60006 CEDEX\",\"lat\":\"49.4333\",\"lon\":\"2.0833\"},{\"name\":\"Arras\",\"country\":\"France\",\"zip\":\"62036 CEDEX\",\"lat\":\"50.293\",\"lon\":\"2.7819\"},{\"name\":\"Villejuif\",\"country\":\"France\",\"zip\":\"94804 CEDEX\",\"lat\":\"48.7939\",\"lon\":\"2.3599\"},{\"name\":\"Nantes\",\"country\":\"France\",\"zip\":\"44916 CEDEX 9\",\"lat\":\"47.2173\",\"lon\":\"-1.5534\"},{\"name\":\"Meaux\",\"country\":\"France\",\"zip\":\"77104 CEDEX\",\"lat\":\"48.9601\",\"lon\":\"2.8788\"},{\"name\":\"Vandœuvre-lès-Nancy\",\"country\":\"France\",\"zip\":\"54516 CEDEX\",\"lat\":\"48.65\",\"lon\":\"6.1833\"},{\"name\":\"Altkirch\",\"country\":\"France\",\"zip\":\"68134 CEDEX\",\"lat\":\"47.6167\",\"lon\":\"7.25\"},{\"name\":\"Saint-Dié-des-Vosges\",\"country\":\"France\",\"zip\":\"88109 CEDEX\",\"lat\":\"48.2833\",\"lon\":\"6.95\"},{\"name\":\"Besançon\",\"country\":\"France\",\"zip\":\"25014 CEDEX\",\"lat\":\"47.2488\",\"lon\":\"6.0182\"},{\"name\":\"La Courneuve\",\"country\":\"France\",\"zip\":\"93126 CEDEX\",\"lat\":\"48.928\",\"lon\":\"2.3963\"},{\"name\":\"Fosses\",\"country\":\"France\",\"zip\":\"95479 CEDEX\",\"lat\":\"49.0981\",\"lon\":\"2.5096\"},{\"name\":\"Saint-Dizier\",\"country\":\"France\",\"zip\":\"52109 CEDEX\",\"lat\":\"48.6333\",\"lon\":\"4.95\"},{\"name\":\"Digne-les-Bains\",\"country\":\"France\",\"zip\":\"04004 CEDEX\",\"lat\":\"44.0925\",\"lon\":\"6.232\"},{\"name\":\"Pau\",\"country\":\"France\",\"zip\":\"64029 CEDEX 9\",\"lat\":\"43.3\",\"lon\":\"-0.3667\"},{\"name\":\"Paris 12\",\"country\":\"France\",\"zip\":\"75562 CEDEX 12\",\"lat\":\"48.8412\",\"lon\":\"2.3876\"},{\"name\":\"Angers\",\"country\":\"France\",\"zip\":\"49066 CEDEX 01\",\"lat\":\"47.4667\",\"lon\":\"-0.55\"},{\"name\":\"Arras\",\"country\":\"France\",\"zip\":\"62070 CEDEX 9\",\"lat\":\"50.293\",\"lon\":\"2.7819\"},{\"name\":\"Avignon\",\"country\":\"France\",\"zip\":\"84007 CEDEX 1\",\"lat\":\"43.9483\",\"lon\":\"4.8089\"},{\"name\":\"Cavaillon\",\"country\":\"France\",\"zip\":\"84304 CEDEX\",\"lat\":\"43.8312\",\"lon\":\"5.0359\"},{\"name\":\"Plaisir\",\"country\":\"France\",\"zip\":\"78379 CEDEX\",\"lat\":\"48.8232\",\"lon\":\"1.9541\"},{\"name\":\"Chennevières-sur-Marne\",\"country\":\"France\",\"zip\":\"94434 CEDEX\",\"lat\":\"48.797\",\"lon\":\"2.5405\"},{\"name\":\"Nanterre\",\"country\":\"France\",\"zip\":\"92742 CEDEX\",\"lat\":\"48.892\",\"lon\":\"2.2067\"},{\"name\":\"Lille\",\"country\":\"France\",\"zip\":\"59049 CEDEX\",\"lat\":\"50.633\",\"lon\":\"3.0586\"},{\"name\":\"Puteaux\",\"country\":\"France\",\"zip\":\"92804 CEDEX\",\"lat\":\"48.8834\",\"lon\":\"2.2389\"},{\"name\":\"Neuilly-sur-Seine\",\"country\":\"France\",\"zip\":\"92527 CEDEX\",\"lat\":\"48.8846\",\"lon\":\"2.2697\"},{\"name\":\"Saint-Quentin\",\"country\":\"France\",\"zip\":\"02104 CEDEX\",\"lat\":\"49.8489\",\"lon\":\"3.2876\"},{\"name\":\"Décines-Charpieu\",\"country\":\"France\",\"zip\":\"69154 CEDEX\",\"lat\":\"45.769\",\"lon\":\"4.9728\"},{\"name\":\"Loudun\",\"country\":\"France\",\"zip\":\"86206 CEDEX\",\"lat\":\"47.0079\",\"lon\":\"0.083\"},{\"name\":\"Bordeaux\",\"country\":\"France\",\"zip\":\"33801 CEDEX\",\"lat\":\"44.8404\",\"lon\":\"-0.5805\"},{\"name\":\"Châlons-en-Champagne\",\"country\":\"France\",\"zip\":\"51039 CEDEX\",\"lat\":\"48.9539\",\"lon\":\"4.3672\"},{\"name\":\"Ivry-sur-Seine\",\"country\":\"France\",\"zip\":\"94852 CEDEX\",\"lat\":\"48.8157\",\"lon\":\"2.3849\"},{\"name\":\"Chambéry\",\"country\":\"France\",\"zip\":\"73091 CEDEX\",\"lat\":\"45.5667\",\"lon\":\"5.9333\"},{\"name\":\"Caen\",\"country\":\"France\",\"zip\":\"14030 CEDEX 4\",\"lat\":\"49.1859\",\"lon\":\"-0.3591\"},{\"name\":\"Villeneuve-d'Ascq\",\"country\":\"France\",\"zip\":\"59663 CEDEX\",\"lat\":\"50.6167\",\"lon\":\"3.1666\"},{\"name\":\"Privas\",\"country\":\"France\",\"zip\":\"07004 CEDEX\",\"lat\":\"44.7333\",\"lon\":\"4.6\"},{\"name\":\"Grenoble\",\"country\":\"France\",\"zip\":\"38035 CEDEX 2\",\"lat\":\"45.1667\",\"lon\":\"5.7167\"},{\"name\":\"Melun\",\"country\":\"France\",\"zip\":\"77050 CEDEX\",\"lat\":\"48.5333\",\"lon\":\"2.6667\"},{\"name\":\"Marne-la-Vallée\",\"country\":\"France\",\"zip\":\"77708 CEDEX 4\",\"lat\":\"48.8333\",\"lon\":\"2.6333\"},{\"name\":\"Paris 13\",\"country\":\"France\",\"zip\":\"75643 CEDEX 13\",\"lat\":\"48.8322\",\"lon\":\"2.3561\"},{\"name\":\"Marseille\",\"country\":\"France\",\"zip\":\"13568 CEDEX 02\",\"lat\":\"43.2969\",\"lon\":\"5.3811\"},{\"name\":\"Cergy-Pontoise\",\"country\":\"France\",\"zip\":\"95092 CEDEX\",\"lat\":\"49.0389\",\"lon\":\"2.077\"},{\"name\":\"Carcassonne\",\"country\":\"France\",\"zip\":\"11860 CEDEX 9\",\"lat\":\"43.2167\",\"lon\":\"2.35\"},{\"name\":\"Bourgoin-Jallieu\",\"country\":\"France\",\"zip\":\"38319 CEDEX\",\"lat\":\"45.5861\",\"lon\":\"5.2736\"},{\"name\":\"Montbéliard\",\"country\":\"France\",\"zip\":\"25204 CEDEX\",\"lat\":\"47.5167\",\"lon\":\"6.8\"},{\"name\":\"Toulon\",\"country\":\"France\",\"zip\":\"83077 CEDEX 9\",\"lat\":\"43.1167\",\"lon\":\"5.9333\"},{\"name\":\"Argenteuil\",\"country\":\"France\",\"zip\":\"95109 CEDEX\",\"lat\":\"48.95\",\"lon\":\"2.25\"},{\"name\":\"Saint-Ouen\",\"country\":\"France\",\"zip\":\"93584 CEDEX\",\"lat\":\"48.9\",\"lon\":\"2.3333\"},{\"name\":\"Lyon\",\"country\":\"France\",\"zip\":\"69469 CEDEX 06\",\"lat\":\"45.7485\",\"lon\":\"4.8467\"},{\"name\":\"Fréjus\",\"country\":\"France\",\"zip\":\"83613 CEDEX\",\"lat\":\"43.4329\",\"lon\":\"6.7352\"},{\"name\":\"Orsay\",\"country\":\"France\",\"zip\":\"91851 CEDEX\",\"lat\":\"48.6957\",\"lon\":\"2.1873\"},{\"name\":\"Nancy\",\"country\":\"France\",\"zip\":\"54076 CEDEX\",\"lat\":\"48.6844\",\"lon\":\"6.185\"},{\"name\":\"Villeurbanne\",\"country\":\"France\",\"zip\":\"69624 CEDEX\",\"lat\":\"45.7667\",\"lon\":\"4.8833\"},{\"name\":\"La Charité-sur-Loire\",\"country\":\"France\",\"zip\":\"58404 CEDEX\",\"lat\":\"47.1833\",\"lon\":\"3.0167\"},{\"name\":\"Provins\",\"country\":\"France\",\"zip\":\"77484 CEDEX\",\"lat\":\"48.55\",\"lon\":\"3.3\"},{\"name\":\"Évry\",\"country\":\"France\",\"zip\":\"91044 CEDEX\",\"lat\":\"48.6333\",\"lon\":\"2.45\"},{\"name\":\"Marseille\",\"country\":\"France\",\"zip\":\"13192 CEDEX 20\",\"lat\":\"43.2969\",\"lon\":\"5.3811\"},{\"name\":\"Guingamp\",\"country\":\"France\",\"zip\":\"22204 CEDEX\",\"lat\":\"48.55\",\"lon\":\"-3.15\"},{\"name\":\"Longjumeau\",\"country\":\"France\",\"zip\":\"91169 CEDEX\",\"lat\":\"48.695\",\"lon\":\"2.3074\"},{\"name\":\"Noyal-sur-Vilaine\",\"country\":\"France\",\"zip\":\"35538 CEDEX\",\"lat\":\"48.1122\",\"lon\":\"-1.5233\"},{\"name\":\"Saint-Gaudens\",\"country\":\"France\",\"zip\":\"31804 CEDEX\",\"lat\":\"43.1167\",\"lon\":\"0.7333\"},{\"name\":\"Pont-à-Mousson\",\"country\":\"France\",\"zip\":\"54704 CEDEX\",\"lat\":\"48.9079\",\"lon\":\"6.0589\"},{\"name\":\"Saint-Brieuc\",\"country\":\"France\",\"zip\":\"22025 CEDEX 1\",\"lat\":\"48.5151\",\"lon\":\"-2.7684\"},{\"name\":\"Toulouse\",\"country\":\"France\",\"zip\":\"31004 CEDEX 6\",\"lat\":\"43.6043\",\"lon\":\"1.4437\"},{\"name\":\"Lescar\",\"country\":\"France\",\"zip\":\"64234 CEDEX\",\"lat\":\"43.3333\",\"lon\":\"-0.4167\"},{\"name\":\"Belfort\",\"country\":\"France\",\"zip\":\"90020 CEDEX\",\"lat\":\"47.6333\",\"lon\":\"6.8667\"},{\"name\":\"Orly aérogare\",\"country\":\"France\",\"zip\":\"94542 CEDEX\",\"lat\":\"48.744\",\"lon\":\"2.3694\"},{\"name\":\"Paris La Défense\",\"country\":\"France\",\"zip\":\"92041 CEDEX\",\"lat\":\"48.8919\",\"lon\":\"2.239\"},{\"name\":\"Chalon-sur-Saône\",\"country\":\"France\",\"zip\":\"71109 CEDEX\",\"lat\":\"46.7833\",\"lon\":\"4.85\"},{\"name\":\"Remiremont\",\"country\":\"France\",\"zip\":\"88204 CEDEX\",\"lat\":\"48.0175\",\"lon\":\"6.5882\"},{\"name\":\"Créteil\",\"country\":\"France\",\"zip\":\"94019 CEDEX\",\"lat\":\"48.7833\",\"lon\":\"2.4667\"},{\"name\":\"Chambéry\",\"country\":\"France\",\"zip\":\"73031 CEDEX\",\"lat\":\"45.5667\",\"lon\":\"5.9333\"},{\"name\":\"Arbois\",\"country\":\"France\",\"zip\":\"39605 CEDEX\",\"lat\":\"46.9031\",\"lon\":\"5.7745\"},{\"name\":\"Pont-Audemer\",\"country\":\"France\",\"zip\":\"27509 CEDEX\",\"lat\":\"49.35\",\"lon\":\"0.5167\"},{\"name\":\"Nantes\",\"country\":\"France\",\"zip\":\"44335 CEDEX 3\",\"lat\":\"47.2173\",\"lon\":\"-1.5534\"},{\"name\":\"Tours\",\"country\":\"France\",\"zip\":\"37032 CEDEX 1\",\"lat\":\"47.3833\",\"lon\":\"0.6833\"},{\"name\":\"Arcueil\",\"country\":\"France\",\"zip\":\"94114 CEDEX\",\"lat\":\"48.7999\",\"lon\":\"2.3326\"},{\"name\":\"Billère\",\"country\":\"France\",\"zip\":\"64145 CEDEX\",\"lat\":\"43.3\",\"lon\":\"-0.4\"},{\"name\":\"Orange\",\"country\":\"France\",\"zip\":\"84104 CEDEX\",\"lat\":\"44.1392\",\"lon\":\"4.8079\"},{\"name\":\"Nîmes\",\"country\":\"France\",\"zip\":\"30034 CEDEX 1\",\"lat\":\"43.8333\",\"lon\":\"4.35\"},{\"name\":\"Yvetot\",\"country\":\"France\",\"zip\":\"76194 CEDEX\",\"lat\":\"49.6174\",\"lon\":\"0.7581\"},{\"name\":\"Voiron\",\"country\":\"France\",\"zip\":\"38504 CEDEX\",\"lat\":\"45.3639\",\"lon\":\"5.5921\"},{\"name\":\"Trélissac\",\"country\":\"France\",\"zip\":\"24758 CEDEX\",\"lat\":\"45.1977\",\"lon\":\"0.7861\"},{\"name\":\"Nice\",\"country\":\"France\",\"zip\":\"06357 CEDEX 4\",\"lat\":\"43.7031\",\"lon\":\"7.2661\"},{\"name\":\"Suresnes\",\"country\":\"France\",\"zip\":\"92159 CEDEX\",\"lat\":\"48.8714\",\"lon\":\"2.2293\"},{\"name\":\"Oullins\",\"country\":\"France\",\"zip\":\"69924 CEDEX\",\"lat\":\"45.7177\",\"lon\":\"4.8038\"},{\"name\":\"Levallois-Perret\",\"country\":\"France\",\"zip\":\"92309 CEDEX\",\"lat\":\"48.8939\",\"lon\":\"2.2886\"},{\"name\":\"Taverny\",\"country\":\"France\",\"zip\":\"95251 CEDEX\",\"lat\":\"49.0254\",\"lon\":\"2.2169\"},{\"name\":\"Parthenay\",\"country\":\"France\",\"zip\":\"79204 CEDEX\",\"lat\":\"46.65\",\"lon\":\"-0.25\"}]}"
            
            if let json = try JSONSerialization.jsonObject(with: data.data(using: .utf8)!) as? [String: Any],
                let cities = json["cities"] as? [[String: Any]] {
                for city in cities {
                    if let name = city["name"] as? String,
                        let zip = city["zip"] as? String,
                        let country = city["country"] as? String,
                        let lat = city["lat"] as? String,
                        let lon = city["lon"] as? String {
                        print(name+"   "+zip+"   "+country+"   "+lat+"   "+lon)
                        mapView?.add(annotation: City.init(name: name, zip: zip, country: country, lat: Double(lat)!, lon: Double(lon)!))
                    }
                }
            }
        } catch {
            print("Error deserializing JSON: \(error)")
        }
        
        let citySource = City(name: "Test", zip:"", country: "FR", lat: 44.8404, lon: 2.4833)
        let cityDestination = City(name: "Test", zip: "", country: "FR", lat: 48.8333, lon: 2.6333)
        
        mapView?.directionRoad(source: citySource, destination: cityDestination, completionHandler: { routes, error in
            
            //if (!(error != nil)) { return }
            
            let route : MKRoute = routes as! MKRoute;
            
            print(route.steps[0].instructions)
            
            
        })
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    func onSelectAnnotation(annotation: Annotationable) {
        print("onSelectAnnotation")
        print(annotation.getTitle())
    }
    
    func onUnselectAnnotation(annotation: Annotationable) {
        print("onUnselectAnnotation")
        print(annotation.getTitle())
    }
}
