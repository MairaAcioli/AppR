//
//  ReceitaModoDePreparoViewController.swift
//  AppReceitaReceberRestaurante
//
//  Created by Maíra Preto on 07/12/19.
//  Copyright © 2019 Maíra Acioli. All rights reserved.
//

import UIKit
import Foundation

class ReceitaModoDePreparoViewController: UIViewController {

    
    
    @IBOutlet weak var fotoReceitaUIImageView: UIImageView!
    
    
    @IBOutlet weak var tituloReceitaLabel: UILabel!
    
    
    @IBOutlet weak var chefReceitaLabel: UILabel!
    
    @IBOutlet weak var ingredientesModoDePreparoTextView: UITextView!
    
    
    var receitaController: ReceitaController = ReceitaController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setupReceita(receita: receitaController.devolveReceita(index: 0))
       

    }
    
     func setupReceita(receita: ReceitaModel){

        self.fotoReceitaUIImageView.image = UIImage(named: receita.fotoReceita)
        
        self.tituloReceitaLabel.text = receita.titulo
        self.tituloReceitaLabel.textColor = .black
        self.tituloReceitaLabel.textColor = .label
        
        self.chefReceitaLabel.text = receita.chefReceita
        self.chefReceitaLabel.textColor = .black
        self.chefReceitaLabel.textColor = .label
        
        self.ingredientesModoDePreparoTextView.text = "INGREDIENTES:   " + receita.ingredientes + "  " + "MODO DE PREPARO:   " + receita.modoDePreparo
        self.ingredientesModoDePreparoTextView.textColor = .black
        self.ingredientesModoDePreparoTextView.textColor = .label
        
        

                
    }

}

