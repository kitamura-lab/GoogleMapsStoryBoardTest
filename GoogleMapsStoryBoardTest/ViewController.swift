//
//  ViewController.swift
//  GoogleMapsStoryBoardTest
//
//  Created by 北村泰彦 on 2018/04/30.
//  Copyright © 2018年 Yasuhiko Kitamura. All rights reserved.
//

import UIKit
import GoogleMaps
import GooglePlaces

class ViewController: UIViewController, GMSMapViewDelegate {

    //@IBOutlet var mapView: GMSMapView!
    
    @IBOutlet weak var mapView: GMSMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mapView.isMyLocationEnabled = true
        mapView.mapType = GMSMapViewType.normal
        mapView.settings.compassButton = true
        mapView.settings.myLocationButton = true
        mapView.delegate = self
        
        // Create a GMSCameraPosition that tells the map to display the
        // coordinate -33.86,151.20 at zoom level 6.
        let camera = GMSCameraPosition.camera(withLatitude: -33.86, longitude: 151.20, zoom: 6.0)
        mapView.camera = camera
        
        // Creates a marker in the center of the map.
        let marker = GMSMarker()
        marker.position = CLLocationCoordinate2D(latitude: -33.86, longitude: 151.20)
        marker.title = "Sydney"
        marker.snippet = "Australia"
        marker.map = mapView
    }
    
    
}

