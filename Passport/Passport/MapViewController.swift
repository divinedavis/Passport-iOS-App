//
//  MapViewController.swift
//  Passport
//
//  Created by Divine Davis on 9/25/15.
//  Copyright © 2015 Juniper Street. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController, MKMapViewDelegate {
    
    @IBOutlet weak var myMapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let italy = MKPointAnnotation()
        italy.coordinate = CLLocationCoordinate2D(latitude: 41.8947400, longitude: 12.4839000)
        italy.title = "Rome, Italy"
        
        let england = MKPointAnnotation()
        england.coordinate = CLLocationCoordinate2D(latitude: 51.5085300, longitude: -0.1257400)
        england.title = "London, England"
        
        let norway = MKPointAnnotation()
        norway.coordinate = CLLocationCoordinate2D(latitude: 59.914225, longitude: 10.75256)
        norway.title = "Oslo, Norway"
        
        let spain = MKPointAnnotation()
        spain.coordinate = CLLocationCoordinate2D(latitude: 40.41694, longitude: -3.70081)
        spain.title = "Madrid, Spain"
        
        let locations = [italy, england, norway, spain]
        
        myMapView.addAnnotations(locations)
        
        let myRegion = MKCoordinateRegionMakeWithDistance(italy.coordinate, 5500000, 5500000)
        
        myMapView.setRegion(myRegion, animated: true)
        
    }
    
    func mapView(mapView: MKMapView, viewForAnnotation annotation: MKAnnotation) -> MKAnnotationView? {
        let pin = MKPinAnnotationView(annotation: annotation, reuseIdentifier: "pinIdentifier")
        pin.canShowCallout = true
        return pin
        
    }

}
