//
//  MenuViewController.swift
//  AppReceitaReceberRestaurante
//
//  Created by Maíra Preto on 14/10/19.
//  Copyright © 2019 Maíra Acioli. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController {

    @IBOutlet weak var receberButton: UIButton!
    
    @IBOutlet weak var receitaButton: UIButton!
    
    @IBOutlet weak var restauranteButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.isNavigationBarHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationController?.isNavigationBarHidden = false
    }
    
 
  
    @IBAction func buttonTap(_ sender: UIButton) {
        guard let vc = storyboard?.instantiateViewController(identifier: "ReceberViewController") as? ReceberViewController else {return}
        
        
        switch sender {
        case receberButton:
            vc.tipo = .receber
            navigationController?.pushViewController(vc, animated: true)
        case receitaButton:
            vc.tipo = .receita
            navigationController?.pushViewController(vc, animated: true)
        case restauranteButton:
            vc.tipo = .restaurante
            navigationController?.pushViewController(vc, animated: true)
        default:
            return
        }
    }
    
    
}