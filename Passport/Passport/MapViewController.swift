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
        
        //this is setting italy as an annotation
        let italy = MKPointAnnotation()
        italy.coordinate = CLLocationCoordinate2D(latitude: 41.8947400, longitude: 12.4839000)
        italy.title = "Rome, Italy"
        
        //england pin
        let england = MKPointAnnotation()
        england.coordinate = CLLocationCoordinate2D(latitude: 51.5085300, longitude: -0.1257400)
        england.title = "London, England"
        
        //created a norway annotation
        let norway = MKPointAnnotation()
        //made the location of norway
        norway.coordinate = CLLocationCoordinate2D(latitude: 59.914225, longitude: 10.75256)
        //made a pop up title come up when you tap the pin
        norway.title = "Oslo, Norway"
        
        let spain = MKPointAnnotation()
        spain.coordinate = CLLocationCoordinate2D(latitude: 40.41694, longitude: -3.70081)
        spain.title = "Madrid, Spain"
        
        //making an array with the locations i provided TYPE SAFE!
        let locations = [italy, england, norway, spain]
        
        //telling myMapView that i want to add the annotations of the locations array
        myMapView.addAnnotations(locations)
        
        //created a variable that uses the coordinates of italty, then zooms out so you can see the rest of the annotations
        let myRegion = MKCoordinateRegionMakeWithDistance(italy.coordinate, 5500000, 5500000)
        
        //telling myMapView that i want to use the region of the variable i just made
        myMapView.setRegion(myRegion, animated: true)
        
    }
    
    func mapView(mapView: MKMapView, viewForAnnotation annotation: MKAnnotation) -> MKAnnotationView? {
        let pin = MKPinAnnotationView(annotation: annotation, reuseIdentifier: "pinIdentifier")
        
        pin.canShowCallout = true
        
        return pin
        
    }

}
