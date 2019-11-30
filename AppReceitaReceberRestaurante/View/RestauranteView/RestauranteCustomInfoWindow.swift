//
//  CustomInfoWindow.swift
//  AppReceitaReceberRestaurante
//
//  Created by Maíra Preto on 28/11/19.
//  Copyright © 2019 Maíra Acioli. All rights reserved.
//

import UIKit
import Foundation


protocol RestauranteCustomInfoWindowDelegate: class {

    func clicouNoBotao()
}


class RestauranteCustomInfoWindow: UIView {

    weak var delegate: RestauranteCustomInfoWindowDelegate?
    
    
    @IBOutlet weak var fotoPinPersonalizacaoImageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var categoriesLabel: UILabel!
    
    var view : UIView!
    
    var restauranteController: RestauranteController? = RestauranteController()
    
    @IBAction func informacoesButton(_ sender: UIButton) -> Void {
        self.delegate?.clicouNoBotao()

    }
   
    
    
    override init(frame: CGRect) {
     super.init(frame: frame)
    }
    
    
    
    required init?(coder aDecoder: NSCoder) {
     super.init(coder: aDecoder)
    }
    
    
    func setUpRestauranteWindow() {
        guard let arrayBussiness = self.restauranteController?.devolveBusiness() else {return}
        for bussiness in arrayBussiness {
            nameLabel.text = bussiness.name
            categoriesLabel.text = bussiness.categories?.first?.title
//            fotoPinPersonalizacaoImageView.image = bussiness.imageURL
        }
    }

    
    func loadView() -> RestauranteCustomInfoWindow{
       
        let restauranteCustomInfoWindow = Bundle.main.loadNibNamed("RestauranteCustomInfoWindow", owner: self, options: nil)?[0] as! RestauranteCustomInfoWindow
     return restauranteCustomInfoWindow
    }

}

