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


    let regiao: CLLocationDistance = 800
    let coordenadaRestaurante = Coordinate(latitude: 0.0, longitude: 0.0)
//    let nomeRestaurante : Business
//
//    super.init(nomeRestaurante : Business) {
//        self.nomeRestaurante = nomeRestaurante
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        

        GMSServices.provideAPIKey("AIzaSyAZA2glzbuUiYlTJbqGFkh_qtLjHl7wVkw")
        GMSPlacesClient.provideAPIKey("AIzaSyAZA2glzbuUiYlTJbqGFkh_qtLjHl7wVkw")

        let camera = GMSCameraPosition.camera(withLatitude: -23.592669, longitude: -46.664963, zoom: 15)
        
        let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
        view = mapView
        


        let marker = GMSMarker()
        marker.position = CLLocationCoordinate2D(latitude: -23.592669, longitude: -46.664963)
        marker.title = "Casa"
        marker.snippet = "São Paulo, Brasil"
//        marker.icon = UIImage(named: "pinRestaurante")
        marker.appearAnimation = .pop
        marker.tracksViewChanges = true
        
        marker.map = mapView
        
        mapView.translatesAutoresizingMaskIntoConstraints = false
        mapView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        mapView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        mapView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        mapView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true

////
////        let localizacaoRestaurantes = GMSMarker()
////        localizacaoRestaurantes.position = CLLocationCoordinate2D(latitude: coordenadaRestaurante.latitude, longitude: coordenadaRestaurante.longitude)
////        localizacaoRestaurantes.icon = GMSMarker.markerImage(with: .gray)
////        localizacaoRestaurantes.title = ""
////        localizacaoRestaurantes.tracksViewChanges = true
//
//
//
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

