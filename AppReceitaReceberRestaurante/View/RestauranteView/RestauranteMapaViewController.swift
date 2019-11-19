////
////  RestauranteMapaViewController.swift
////  AppReceitaReceberRestaurante
////
////  Created by Maíra Preto on 27/10/19.
////  Copyright © 2019 Maíra Acioli. All rights reserved.
////
//

import UIKit

import GoogleMaps

import GooglePlaces




class RestauranteMapaViewController: UIViewController, GMSMapViewDelegate {


    var controller: RestauranteController? = RestauranteController()
    let regiao: CLLocationDistance = 800
    var mapView: GMSMapView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.controller?.getRestaurantes(completion: { (success) in
            if success {
                DispatchQueue.main.async {
                    self.addPinMap()
                }
            }
        })
        
        
        GMSServices.provideAPIKey("AIzaSyAZA2glzbuUiYlTJbqGFkh_qtLjHl7wVkw")
        GMSPlacesClient.provideAPIKey("AIzaSyAZA2glzbuUiYlTJbqGFkh_qtLjHl7wVkw")

        let camera = GMSCameraPosition.camera(withLatitude: -23.592669, longitude: -46.664963, zoom: 15)
        
        mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
        view = mapView
        

        let marker = GMSMarker()
        marker.position = CLLocationCoordinate2D(latitude: -23.592669, longitude: -46.664963)
        marker.title = "Casa"
        marker.snippet = "São Paulo, Brasil"
//        marker.icon = UIImage(named: "pinRestaurante")
        marker.appearAnimation = .pop
        marker.tracksViewChanges = true
        
        marker.map = mapView
        
        mapView?.translatesAutoresizingMaskIntoConstraints = false
        mapView?.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        mapView?.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        mapView?.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        mapView?.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        
        
    }


    func addPinMap() {
        guard let arrayBussiness = self.controller?.devolveBusiness() else {return}
        let restaurant = RestaurantePreviewView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        for bussiness in arrayBussiness {
            let marker = GMSMarker()
            marker.position = CLLocationCoordinate2D(latitude: bussiness.coordinates?.latitude ?? 0, longitude: bussiness.coordinates?.longitude ?? 0)
            marker.title = bussiness.name
            marker.snippet = bussiness.categories?.first?.title
            marker.iconView = restaurant
            marker.appearAnimation = .pop
            marker.tracksViewChanges = true
            
            marker.map = mapView
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

