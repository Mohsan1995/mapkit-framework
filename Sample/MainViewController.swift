//
//  MainViewController.swift
//  mapkit-framework
//
//  Created by Quentin on 26/01/2017.
//  Copyright © 2017 ESGI. All rights reserved.
//

import UIKit
import MapKit

class MainViewController: UIViewController, MapViewDelegate {

    var mapView: MapViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.mapView = IOSMapViewController(rootView: self.view)
        //self.mapView = GoogleMapViewController(rootView: self.view)
        mapView?.delegate = self
        
        do {
            var data = "{\"cities\":[{\"name\":\"Laval\",\"country\":\"France\",\"lat\":\"48.0667\",\"lon\":\"-0.7667\"},{\"name\":\"Ussel\",\"country\":\"France\",\"lat\":\"45.55\",\"lon\":\"2.3167\"},{\"name\":\"Soisy-sous-Montmorency\",\"country\":\"France\",\"lat\":\"48.9881\",\"lon\":\"2.3016\"},{\"name\":\"Villeneuve-lès-Avignon\",\"country\":\"France\",\"lat\":\"43.9684\",\"lon\":\"4.7963\"},{\"name\":\"Cergy-Pontoise\",\"country\":\"France\",\"lat\":\"49.0389\",\"lon\":\"2.077\"},{\"name\":\"Lille\",\"country\":\"France\",\"lat\":\"50.633\",\"lon\":\"3.0586\"},{\"name\":\"Rueil-Malmaison\",\"country\":\"France\",\"lat\":\"48.8765\",\"lon\":\"2.1897\"},{\"name\":\"Bourges\",\"country\":\"France\",\"lat\":\"47.0833\",\"lon\":\"2.4\"},{\"name\":\"Angoulême\",\"country\":\"France\",\"lat\":\"45.65\",\"lon\":\"0.15\"},{\"name\":\"Pau\",\"country\":\"France\",\"lat\":\"43.3\",\"lon\":\"-0.3667\"},{\"name\":\"Tarbes\",\"country\":\"France\",\"lat\":\"43.2333\",\"lon\":\"0.0833\"},{\"name\":\"Metz\",\"country\":\"France\",\"lat\":\"49.1191\",\"lon\":\"6.1727\"},{\"name\":\"Saumur\",\"country\":\"France\",\"lat\":\"47.2667\",\"lon\":\"-0.0833\"},{\"name\":\"Cergy-Pontoise\",\"country\":\"France\",\"lat\":\"49.0389\",\"lon\":\"2.077\"},{\"name\":\"Dunkerque\",\"country\":\"France\",\"lat\":\"51.033\",\"lon\":\"2.377\"},{\"name\":\"Cosne-Cours-sur-Loire\",\"country\":\"France\",\"lat\":\"47.411\",\"lon\":\"2.9253\"},{\"name\":\"Bordeaux\",\"country\":\"France\",\"lat\":\"44.8404\",\"lon\":\"-0.5805\"},{\"name\":\"Metz\",\"country\":\"France\",\"lat\":\"49.1191\",\"lon\":\"6.1727\"},{\"name\":\"Dijon\",\"country\":\"France\",\"lat\":\"47.3167\",\"lon\":\"5.0167\"},{\"name\":\"Quimper\",\"country\":\"France\",\"lat\":\"48\",\"lon\":\"-4.1\"},{\"name\":\"Levallois-Perret\",\"country\":\"France\",\"lat\":\"48.8939\",\"lon\":\"2.2886\"},{\"name\":\"Montpellier\",\"country\":\"France\",\"lat\":\"43.6109\",\"lon\":\"3.8772\"},{\"name\":\"Caen\",\"country\":\"France\",\"lat\":\"49.1859\",\"lon\":\"-0.3591\"},{\"name\":\"Aulnay-sous-Bois\",\"country\":\"France\",\"lat\":\"48.9381\",\"lon\":\"2.494\"},{\"name\":\"Paris 04\",\"country\":\"France\",\"lat\":\"48.8601\",\"lon\":\"2.3507\"},{\"name\":\"Bordeaux\",\"country\":\"France\",\"lat\":\"44.8404\",\"lon\":\"-0.5805\"},{\"name\":\"Toulon\",\"country\":\"France\",\"lat\":\"43.1167\",\"lon\":\"5.9333\"},{\"name\":\"Bry-sur-Marne\",\"country\":\"France\",\"lat\":\"48.8381\",\"lon\":\"2.5249\"},{\"name\":\"Le Mans\",\"country\":\"France\",\"lat\":\"48\",\"lon\":\"0.2\"},{\"name\":\"Limoges\",\"country\":\"France\",\"lat\":\"45.8315\",\"lon\":\"1.2578\"},{\"name\":\"Paris La Défense\",\"country\":\"France\",\"lat\":\"48.8919\",\"lon\":\"2.239\"},{\"name\":\"Bonneville\",\"country\":\"France\",\"lat\":\"46.0802\",\"lon\":\"6.4073\"},{\"name\":\"Tours\",\"country\":\"France\",\"lat\":\"47.3833\",\"lon\":\"0.6833\"},{\"name\":\"Brest\",\"country\":\"France\",\"lat\":\"48.4\",\"lon\":\"-4.4833\"},{\"name\":\"Hyères\",\"country\":\"France\",\"lat\":\"43.1195\",\"lon\":\"6.139\"},{\"name\":\"Nanterre\",\"country\":\"France\",\"lat\":\"48.892\",\"lon\":\"2.2067\"},{\"name\":\"Saint-Julien-en-Genevois\",\"country\":\"France\",\"lat\":\"46.1443\",\"lon\":\"6.0826\"},{\"name\":\"Lisieux\",\"country\":\"France\",\"lat\":\"49.1466\",\"lon\":\"0.2293\"},{\"name\":\"Aubervilliers\",\"country\":\"France\",\"lat\":\"48.9167\",\"lon\":\"2.3833\"},{\"name\":\"Lyon\",\"country\":\"France\",\"lat\":\"45.7485\",\"lon\":\"4.8467\"},{\"name\":\"Metz\",\"country\":\"France\",\"lat\":\"49.1191\",\"lon\":\"6.1727\"},{\"name\":\"Vanves\",\"country\":\"France\",\"lat\":\"48.8235\",\"lon\":\"2.2903\"},{\"name\":\"Seynod\",\"country\":\"France\",\"lat\":\"45.8855\",\"lon\":\"6.0883\"},{\"name\":\"Montpellier\",\"country\":\"France\",\"lat\":\"43.6109\",\"lon\":\"3.8772\"},{\"name\":\"Toulon\",\"country\":\"France\",\"lat\":\"43.1167\",\"lon\":\"5.9333\"},{\"name\":\"Marne-la-Vallée\",\"country\":\"France\",\"lat\":\"48.8333\",\"lon\":\"2.6333\"},{\"name\":\"Bonneuil-sur-Marne\",\"country\":\"France\",\"lat\":\"48.7695\",\"lon\":\"2.4793\"},{\"name\":\"Maubeuge\",\"country\":\"France\",\"lat\":\"50.2788\",\"lon\":\"3.9727\"},{\"name\":\"Le Havre\",\"country\":\"France\",\"lat\":\"49.4938\",\"lon\":\"0.1077\"},{\"name\":\"Wissembourg\",\"country\":\"France\",\"lat\":\"49.0371\",\"lon\":\"7.9455\"},{\"name\":\"Agen\",\"country\":\"France\",\"lat\":\"44.2\",\"lon\":\"0.6333\"},{\"name\":\"Paris 17\",\"country\":\"France\",\"lat\":\"48.8835\",\"lon\":\"2.3219\"},{\"name\":\"Ivry-sur-Seine\",\"country\":\"France\",\"lat\":\"48.8157\",\"lon\":\"2.3849\"},{\"name\":\"Andrézieux-Bouthéon\",\"country\":\"France\",\"lat\":\"45.5263\",\"lon\":\"4.2602\"},{\"name\":\"Dijon\",\"country\":\"France\",\"lat\":\"47.3167\",\"lon\":\"5.0167\"},{\"name\":\"Schirmeck\",\"country\":\"France\",\"lat\":\"48.4794\",\"lon\":\"7.2151\"},{\"name\":\"Orléans\",\"country\":\"France\",\"lat\":\"47.9029\",\"lon\":\"1.9039\"},{\"name\":\"Brignoles\",\"country\":\"France\",\"lat\":\"43.4\",\"lon\":\"6.0667\"},{\"name\":\"Bergerac\",\"country\":\"France\",\"lat\":\"44.85\",\"lon\":\"0.4833\"},{\"name\":\"Vannes\",\"country\":\"France\",\"lat\":\"47.6667\",\"lon\":\"-2.75\"},{\"name\":\"Sophia Antipolis\",\"country\":\"France\",\"lat\":\"43.6223\",\"lon\":\"7.0472\"},{\"name\":\"Bry-sur-Marne\",\"country\":\"France\",\"lat\":\"48.8381\",\"lon\":\"2.5249\"},{\"name\":\"Perpignan\",\"country\":\"France\",\"lat\":\"42.6976\",\"lon\":\"2.8954\"},{\"name\":\"Toulouse\",\"country\":\"France\",\"lat\":\"43.6043\",\"lon\":\"1.4437\"},{\"name\":\"Paris 06\",\"country\":\"France\",\"lat\":\"48.8493\",\"lon\":\"2.33\"},{\"name\":\"Perpignan\",\"country\":\"France\",\"lat\":\"42.6976\",\"lon\":\"2.8954\"},{\"name\":\"Issy-les-Moulineaux\",\"country\":\"France\",\"lat\":\"48.821\",\"lon\":\"2.2772\"},{\"name\":\"Brest\",\"country\":\"France\",\"lat\":\"48.4\",\"lon\":\"-4.4833\"},{\"name\":\"Rouen\",\"country\":\"France\",\"lat\":\"49.4431\",\"lon\":\"1.0993\"},{\"name\":\"Argentan\",\"country\":\"France\",\"lat\":\"48.75\",\"lon\":\"-0.0167\"},{\"name\":\"Bordeaux\",\"country\":\"France\",\"lat\":\"44.8404\",\"lon\":\"-0.5805\"},{\"name\":\"Paris 10\",\"country\":\"France\",\"lat\":\"48.8709\",\"lon\":\"2.3561\"},{\"name\":\"Lens\",\"country\":\"France\",\"lat\":\"50.433\",\"lon\":\"2.8279\"},{\"name\":\"Cherbourg-Octeville\",\"country\":\"France\",\"lat\":\"49.6398\",\"lon\":\"-1.6164\"},{\"name\":\"Belfort\",\"country\":\"France\",\"lat\":\"47.6333\",\"lon\":\"6.8667\"},{\"name\":\"Palaiseau\",\"country\":\"France\",\"lat\":\"48.7167\",\"lon\":\"2.25\"},{\"name\":\"Poligny\",\"country\":\"France\",\"lat\":\"46.8371\",\"lon\":\"5.705\"},{\"name\":\"Lyon\",\"country\":\"France\",\"lat\":\"45.7485\",\"lon\":\"4.8467\"},{\"name\":\"Marseille\",\"country\":\"France\",\"lat\":\"43.2969\",\"lon\":\"5.3811\"},{\"name\":\"Châteauroux\",\"country\":\"France\",\"lat\":\"46.8167\",\"lon\":\"1.7\"},{\"name\":\"Rumilly\",\"country\":\"France\",\"lat\":\"45.8687\",\"lon\":\"5.9365\"},{\"name\":\"Orléans\",\"country\":\"France\",\"lat\":\"47.9029\",\"lon\":\"1.9039\"},{\"name\":\"Vanves\",\"country\":\"France\",\"lat\":\"48.8235\",\"lon\":\"2.2903\"},{\"name\":\"Saint-Herblain\",\"country\":\"France\",\"lat\":\"47.2176\",\"lon\":\"-1.6484\"},{\"name\":\"Bordeaux\",\"country\":\"France\",\"lat\":\"44.8404\",\"lon\":\"-0.5805\"},{\"name\":\"Saint-Quentin\",\"country\":\"France\",\"lat\":\"49.8489\",\"lon\":\"3.2876\"},{\"name\":\"Amiens\",\"country\":\"France\",\"lat\":\"49.9\",\"lon\":\"2.3\"},{\"name\":\"Évreux\",\"country\":\"France\",\"lat\":\"49.0241\",\"lon\":\"1.1508\"},{\"name\":\"Nogent-sur-Marne\",\"country\":\"France\",\"lat\":\"48.8333\",\"lon\":\"2.4833\"},{\"name\":\"Paris 08\",\"country\":\"France\",\"lat\":\"48.8763\",\"lon\":\"2.3183\"},{\"name\":\"Nanterre\",\"country\":\"France\",\"lat\":\"48.892\",\"lon\":\"2.2067\"},{\"name\":\"Angers\",\"country\":\"France\",\"lat\":\"47.4667\",\"lon\":\"-0.55\"},{\"name\":\"Mulhouse\",\"country\":\"France\",\"lat\":\"47.75\",\"lon\":\"7.3333\"},{\"name\":\"Toulouse\",\"country\":\"France\",\"lat\":\"43.6043\",\"lon\":\"1.4437\"},{\"name\":\"Paris 19\",\"country\":\"France\",\"lat\":\"48.8817\",\"lon\":\"2.3822\"},{\"name\":\"Vitrolles\",\"country\":\"France\",\"lat\":\"43.46\",\"lon\":\"5.2486\"},{\"name\":\"Bernay\",\"country\":\"France\",\"lat\":\"49.0889\",\"lon\":\"0.5986\"},{\"name\":\"Paris 16\",\"country\":\"France\",\"lat\":\"48.8637\",\"lon\":\"2.2769\"},{\"name\":\"Cergy-Pontoise\",\"country\":\"France\",\"lat\":\"49.0389\",\"lon\":\"2.077\"},{\"name\":\"Saint-Quentin-en-Yvelines\",\"country\":\"France\",\"lat\":\"48.7732\",\"lon\":\"2.0191\"}]}"
            
            if let json = try JSONSerialization.jsonObject(with: data.data(using: .utf8)!) as? [String: Any],
                let cities = json["cities"] as? [[String: Any]] {
                for city in cities {
                    if let name = city["name"] as? String,
                       let country = city["country"] as? String,
                       let lat = city["lat"] as? String,
                        let lon = city["lon"] as? String {
                        print(name+"   "+country+"   "+lat+"   "+lon)
                        mapView?.add(annotation: City.init(name: name, country: country, lat: Double(lat)!, lon: Double(lon)!))
                    }
                }
            }
        } catch {
            print("Error deserializing JSON: \(error)")
        }
        
        let citySource = City(name: "Test", country: "FR", lat: 44.8404, lon: 2.4833)
        let cityDestination = City(name: "Test", country: "FR", lat: 48.8333, lon: 2.6333)
        
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
