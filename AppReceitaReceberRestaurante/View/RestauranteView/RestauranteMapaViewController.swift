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
        
//        self.setupViews()
        
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
        let restaurant = RestaurantePreviewView(frame: CGRect(x: 0, y: 0, width: 100, height: 200))
        
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
    
//    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
//           let autoCompleteController = GMSAutocompleteViewController()
//        autoCompleteController.delegate = self as! GMSAutocompleteViewControllerDelegate
//
//           let filter = GMSAutocompleteFilter()
//           autoCompleteController.autocompleteFilter = filter
//
//           self.locationManager.startUpdatingLocation()
//           self.present(autoCompleteController, animated: true, completion: nil)
//           return false
//       }
//
//    let txtFieldSearch: UITextField = {
//        let tf=UITextField()
//        tf.borderStyle = .roundedRect
//        tf.backgroundColor = .white
//        tf.layer.borderColor = UIColor.darkGray.cgColor
//        tf.placeholder="Search for a location"
//        tf.translatesAutoresizingMaskIntoConstraints=false
//        return tf
//    }()
//
//    func setupTextField(textField: UITextField, img: UIImage){
//        textField.leftViewMode = UITextField.ViewMode.always
//        let imageView = UIImageView(frame: CGRect(x: 5, y: 5, width: 20, height: 20))
//        imageView.image = img
//        let paddingView = UIView(frame:CGRect(x: 0, y: 0, width: 30, height: 30))
//        paddingView.addSubview(imageView)
//        textField.leftView = paddingView
//    }
//
//    func setupViews() {
//    self.view.addSubview(txtFieldSearch)
//    txtFieldSearch.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10).isActive=true
//    txtFieldSearch.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10).isActive=true
//    txtFieldSearch.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -10).isActive=true
//    txtFieldSearch.heightAnchor.constraint(equalToConstant: 35).isActive=true
//    setupTextField(textField: txtFieldSearch, img: #imageLiteral(resourceName: "floresCafeEProsa04"))
//
//    let restaurantePreviewView: RestaurantePreviewView?
//    restaurantePreviewView = RestaurantePreviewView(frame: CGRect(x: 0, y: 0, width: self.view.frame.width, height: 190))
//
//    }
    

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

