//
//  ReceberEmpresasViewController.swift
//  AppReceitaReceberRestaurante
//
//  Created by Maíra Preto on 30/11/19.
//  Copyright © 2019 Maíra Acioli. All rights reserved.
//

import UIKit

class ReceberEmpresasViewController: UIViewController {
    
    @IBOutlet var empresa1View: UIView!
    
    @IBOutlet weak var logoEmpresa1ImageView: UIImageView!
    
    @IBOutlet weak var nomeEmpresa1Label: UILabel!
    
    @IBOutlet weak var descricaoEmpresa1LAbel: UILabel!
    
    @IBOutlet var empresa2View: UIView!
    
    
    
    @IBOutlet weak var efeitoBlur: UIVisualEffectView!
    
   var dados: GenericData?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        empresa1View.layer.cornerRadius = 5
        empresa2View.layer.cornerRadius = 5
        
        self.animacaoEntradaView()
        self.setUpView1()
       
        
    }
    
    func setUpView1(){
        
//        nomeEmpresa1Label.text = dados?.nomeEmpresa1
//        descricaoEmpresa1LAbel.text = dados?.descricaoEmpresa1
//        logoEmpresa1ImageView.image = UIImage(named: dados?.logoEmpresa1 ?? "")
        
        nomeEmpresa1Label.text = "Cosi Home"
        descricaoEmpresa1LAbel.text = "Objetos de decor genuinos e funcionais"
        logoEmpresa1ImageView.image = UIImage(named: "logoCosi")
        
        nomeEmpresa1Label.textColor = .label
        descricaoEmpresa1LAbel.textColor = .label
    }
    
    func animacaoEntradaView() {
        
        self.view.addSubview(empresa1View)
//        self.view.addSubview(empresa2View)
        
        empresa1View.center = self.view.center
        
        }
        
        @IBAction func verNoSite1Button(_ sender: Any) {
            
            if let url = URL(string: "https://www.cosihome.com.br") {
                UIApplication.shared.open(url)
                
                
            }
                  
                  
              }
        
        
    }
    
      


        
        
 
    
    


