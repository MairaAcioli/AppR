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
    
    @IBOutlet weak var logoEmpresa2ImageView: UIImageView!
    
    @IBOutlet weak var nomeEmpresa2Label: UILabel!
    
    @IBOutlet weak var descricaoEmpresa2Label: UILabel!
    
    
    @IBOutlet weak var efeitoBlur: UIVisualEffectView!
    
   var dados: GenericData?
   var receberController: GenericController!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        empresa1View.layer.cornerRadius = 5
        empresa2View.layer.cornerRadius = 5
        
        self.animacaoEntradaView()
        self.setUpView1()
      
       
        
    }
    
    func setUpView1(){
          
        nomeEmpresa1Label.text = "Cosi Home"
        descricaoEmpresa1LAbel.text = "coisas descoladas para casa"
        logoEmpresa1ImageView.image = UIImage(named: "logoCosi")
          
        nomeEmpresa1Label.textColor = .label
        descricaoEmpresa1LAbel.textColor = .label
        
//        nomeEmpresa1Label.text = receber.nomeEmpresa1
//        descricaoEmpresa1LAbel.text = receber.descricaoEmpresa1
//        logoEmpresa1ImageView.image = UIImage(named: receber.logoEmpresa1)
        
        nomeEmpresa2Label.text = "Duas Gastronomia"
        descricaoEmpresa2Label.text = "buffet diferente e creativo"
        logoEmpresa2ImageView.image = UIImage(named: "logoDuas")
                 
               nomeEmpresa2Label.textColor = .label
               descricaoEmpresa2Label.textColor = .label
       
    }
    
    func animacaoEntradaView() {
        
        self.view.addSubview(empresa1View)
        self.view.addSubview(empresa2View)
        
        empresa1View.center = self.view.center
        empresa2View.alignmentRect(forFrame: CGRect.init(x: 100, y: 200, width: 300, height: 200))
        
        }
        
        @IBAction func verNoSite1Button(_ sender: Any) {
            
            if let url = URL(string: "https://www.cosihome.com.br") {
                UIApplication.shared.open(url)
                
                
            }
            
            
                  
                  
              }
        
    @IBAction func verNoSite2Button(_ sender: Any) {
    
        if let url = URL(string: "https://www.instagram.com/duasgastronomia/?hl=pt-br") {
                      UIApplication.shared.open(url)
    
    }
    
    }
}
      


        
        
 
    
    


