//
//  BemVindoViewController.swift
//  AppReceitaReceberRestaurante
//
//  Created by Maíra Preto on 21/10/19.
//  Copyright © 2019 Maíra Acioli. All rights reserved.
//

import UIKit

class BemVindoViewController: UIViewController {

   
    @IBOutlet weak var bemVindoLabel: UILabel!
    
    @IBOutlet weak var menuButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
        setUpMenu()
        
    }
    

    @IBAction func proximaTelaMenuButton(_ sender: UIButton) {

        
        if let vc = storyboard?.instantiateViewController(identifier: "MenuViewController") as? MenuViewController {
            
            let nvc = UINavigationController(rootViewController: vc)
            nvc.modalPresentationStyle = .fullScreen
            self.present(nvc, animated: true, completion: nil)
        }
       
    }

    
    func setUpMenu(){
        
        Utilities.styleFilledButton(menuButton)
        
        
    }

}
