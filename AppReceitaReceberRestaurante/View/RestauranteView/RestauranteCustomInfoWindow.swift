//
//  CustomInfoWindow.swift
//  AppReceitaReceberRestaurante
//
//  Created by Maíra Preto on 28/11/19.
//  Copyright © 2019 Maíra Acioli. All rights reserved.
//

import UIKit
import Foundation

import SDWebImage


protocol RestauranteCustomInfoWindowDelegate: class {

    func clicouNoBotao(value: Business?)
}


class RestauranteCustomInfoWindow: UIView {

    weak var delegate: RestauranteCustomInfoWindowDelegate?
    
    
    @IBOutlet weak var fotoPinPersonalizacaoImageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var categoriesLabel: UILabel!
    
    var view : UIView!
    
    var restauranteController: RestauranteController? = RestauranteController()
    
    var modelRestaurante: Business?
    
    @IBAction func informacoesButton(_ sender: UIButton) -> Void {
       
        self.delegate?.clicouNoBotao(value: modelRestaurante)
        
//        aqui manda os dados para
//
//        if let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "RestauranteInformacoesViewController") as? RestauranteInformacoesViewController {
//
//                   vc.dados = modelRestaurante
//
        
        

    }
   
    
//
//    override init(frame: CGRect) {
//     super.init(frame: frame)
//    }
//
//
//
//    required init?(coder aDecoder: NSCoder) {
//     super.init(coder: aDecoder)
//    }
    
    
    func setUpRestauranteWindow(value: Business?) {
//        guard let arrayBussiness = self.restauranteController?.devolveBusiness() else {return}
//        for bussiness in arrayBussiness {
//            nameLabel.text = bussiness.name
//            categoriesLabel.text = bussiness.categories?.first?.title
////            fotoPinPersonalizacaoImageView.image = bussiness.imageURL
//        }
        
        if let _value = value {
            
            nameLabel.text = _value.name
            categoriesLabel.text = _value.phone
            fotoPinPersonalizacaoImageView.sd_setImage(with: URL(string: _value.imageURL!), placeholderImage: UIImage(named: "degradeFundo"))
            
            nameLabel.textColor = .label
            categoriesLabel.textColor = .label
            
            
               
        }
        
        
//        nameLabel.text = "Figo"
//        categoriesLabel.text = "comida saudável, chef inovadora preocupada com o bem estar do cliente"
//
    }

    
    func loadView() -> RestauranteCustomInfoWindow{
       
        let restauranteCustomInfoWindow = Bundle.main.loadNibNamed("RestauranteCustomInfoWindow", owner: self, options: nil)?[0] as! RestauranteCustomInfoWindow
        
        
        
     return restauranteCustomInfoWindow
    }

}


