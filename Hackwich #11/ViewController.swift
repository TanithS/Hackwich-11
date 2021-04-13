//
//  ViewController.swift
//  Hackwich #11
//
//  Created by User on 4/13/21.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController {
    
    let initialLocation = CLLocation(latitude: 21.356522325850733, longitude: -158.05621900337144)
    
    let regionRadius: CLLocationDistance = 10000
    
    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        centerMapOnLocation(location: initialLocation)
        
        let restaurantOne = restaurantAnnotation (title: "Pho H&H", type: "Vietnamese", coordinate: CLLocationCoordinate2D(latitude: 21.343281388111095, longitude: -158.072784402751))
        
        //let restaurantTwo = restaurantAnnotation (title: "Kalapawai", type: "American", coordinate: CLLocationCoordinate2D(latitude: 21.34620324839551, longitude: -158.08077488913924))
        
        mapView.addAnnotation(restaurantOne)
        
        //mapView.addAnnotation(restaurantTwo)
        
    }
    
    func centerMapOnLocation(location:CLLocation) {
        
        let coordinateRegion = MKCoordinateRegion(center: location.coordinate, latitudinalMeters: regionRadius, longitudinalMeters: regionRadius)
        
        mapView.setRegion(coordinateRegion, animated:true)
        
    }


}

