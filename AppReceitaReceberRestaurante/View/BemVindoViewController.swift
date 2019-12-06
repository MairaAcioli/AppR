//
//  BemVindoViewController.swift
//  AppReceitaReceberRestaurante
//
//  Created by Maíra Preto on 21/10/19.
//  Copyright © 2019 Maíra Acioli. All rights reserved.
//

import UIKit
import Foundation

class BemVindoViewController: BaseViewController {

   
    @IBOutlet weak var perfilTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.perfilTableView.delegate = self
        self.perfilTableView.dataSource = self
        self.perfilTableView.register(UINib(nibName: "PerfilTableViewCell", bundle: nil), forCellReuseIdentifier: "PerfilTableViewCell")
    
//        setUpMenu()
        
    }
    

//    @IBAction func proximaTelaMenuButton(_ sender: UIButton) {
//
//        
//        if let vc = storyboard?.instantiateViewController(identifier: "MenuViewController") as? MenuViewController {
//            
//            let nvc = UINavigationController(rootViewController: vc)
//            nvc.modalPresentationStyle = .fullScreen
//            self.present(nvc, animated: true, completion: nil)
//        }
//       
//    }

//
//    func setUpMenu(){
//
//        Utilities.styleFilledButton(menuButton)
//
//
//    }

}


extension BemVindoViewController: UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
    
         if let perfilCell = tableView.dequeueReusableCell(withIdentifier: "PerfilTableViewCell", for: indexPath) as? PerfilTableViewCell {
            
            perfilCell.setUpPerfil()
            
            return perfilCell
        
        }
        
    
      return UITableViewCell()
    
  
}
}
