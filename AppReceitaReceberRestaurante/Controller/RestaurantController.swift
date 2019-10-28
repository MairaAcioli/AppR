//
//  RestaurantController.swift
//  AppReceitaReceberRestaurante
//
//  Created by Maíra Preto on 24/10/19.
//  Copyright © 2019 Maíra Acioli. All rights reserved.
//

import Foundation
class RestauranteController {
    
    var restaurantes: [Business] = []
    
    func getRestaurantes() {
        ApiManager().getRestaurante(location: "SAO") { (arrayBussiness, error) in
            if !error {
                if let array = arrayBussiness {
                    self.restaurantes.append(contentsOf: array)
                }
            }
        }
    }
}
