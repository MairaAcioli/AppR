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
    
        let alerta = UIAlertController(title: "Atenção", message: "Deseja sair do aplicativo?", preferredStyle: .actionSheet)

    let btnOK = UIAlertAction(title: "Sair", style: .destructive) { (alert) in
                   self.singOut()
               }
               
               let btnCancel = UIAlertAction(title: "Cancelar", style: .cancel, handler: nil)
               
               alerta.addAction(btnOK)
               alerta.addAction(btnCancel)
               
               self.present(alerta, animated: true, completion: nil)
        
    }

//   func singOut(){
//       
//            do {
//                try
//                    Auth.auth().signOut()
//                if let storyboard = self.storyboard {
//                     UserDefaults.standard.set(false, forKey: "logado")
//                    let vc = storyboard.instantiateViewController(identifier: "AberturaViewController") as? AberturaViewController ?? UIViewController()
//                    vc.modalPresentationStyle = .fullScreen
//                    self.present(vc, animated: true, completion: nil)
//                    
//                
//                }
//                
//                   
//    //            self.dismiss(animated: true)
//            } catch let error {
//                print("Falha ao deslogar", error)
//            }
//        }
    
  
    @IBAction func buttonTap(_ sender: UIButton) {
        guard let vc = storyboard?.instantiateViewController(identifier: "ReceberViewController") as? ReceberViewController else {return}
        
        let alerta = UIAlertController(title: "Log Out", message: "certeza que deseja sair?", preferredStyle: .actionSheet)

               let btnOK = UIAlertAction(title: "OK", style: .default) { (alert) in
                   self.singOut()
               }
               
               let btnCancel = UIAlertAction(title: "CANCEL", style: .cancel, handler: nil)
        
              
               
               alerta.addAction(btnOK)
               alerta.addAction(btnCancel)
               
               
               self.present(alerta, animated: true, completion: nil)
        
        
    }

    func singOut(){

            do {
                try
                    Auth.auth().signOut()
                if let storyboard = self.storyboard {
                     UserDefaults.standard.set(false, forKey: "logado")
                    let vc = storyboard.instantiateViewController(identifier: "AberturaViewController") as? AberturaViewController ?? UIViewController()
                    vc.modalPresentationStyle = .fullScreen
                    self.present(vc, animated: true, completion: nil)


                }


    //            self.dismiss(animated: true)
            } catch let error {
                print("Falha ao deslogar", error)
            }
        }
//
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
