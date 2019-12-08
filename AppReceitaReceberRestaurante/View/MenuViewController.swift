//
//  MenuViewController.swift
//  AppReceitaReceberRestaurante
//
//  Created by Maíra Preto on 14/10/19.
//  Copyright © 2019 Maíra Acioli. All rights reserved.
//

import UIKit

import FirebaseAuth

class MenuViewController: BaseViewController, UITabBarDelegate {

    @IBOutlet weak var receberButton: UIButton!
    
    @IBOutlet weak var receitaButton: UIButton!
    
    @IBOutlet weak var restauranteButton: UIButton!
    
    
    var menu: MenuViewController!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        UserDefaults.standard.set(true, forKey: "logado")
        self.menu = MenuViewController()
    
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.toolbar.barTintColor = .systemPink
        self.navigationController?.isNavigationBarHidden = true
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
         self.navigationController?.toolbar.barTintColor = .systemPink
        self.navigationController?.isNavigationBarHidden = false
       
    }
    
    @IBAction func logOutButton(_ sender: Any) {
        
        self.singOut()
        
    }

    func singOut(){
        
        do {
            try
                Auth.auth().signOut()
            self.dismiss(animated: true)
        } catch let error {
            print("Falha ao deslogar", error)
        }
    }
    
//  
//    @IBAction func buttonTap(_ sender: UIButton) {
//        guard let vc = storyboard?.instantiateViewController(identifier: "ReceberViewController") as? ReceberViewController else {return}
//        
//        
//        switch sender {
//        case receberButton:
//            vc.tipo = .receber
//            navigationController?.pushViewController(vc, animated: true)
//            
//        case receitaButton:
//            vc.tipo = .receita
//            navigationController?.pushViewController(vc, animated: true)
//            
//       case restauranteButton:
//            vc.tipo = .restaurante
//            navigationController?.pushViewController(vc, animated: true)
//        default:
//            return
//        }
//    }
    
    
}
