//
//  PerfilTableViewCell.swift
//  AppReceitaReceberRestaurante
//
//  Created by Maíra Preto on 06/12/19.
//  Copyright © 2019 Maíra Acioli. All rights reserved.
//

import UIKit

class PerfilTableViewCell: UITableViewCell {

    
    
    @IBOutlet weak var retratoUsusarioImageView: UIImageView!
    
    @IBOutlet weak var nomeSobrenomeUsuarioLabel: UILabel!
    
    @IBOutlet weak var emailUsuarioLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setUpPerfil() {
        
     retratoUsusarioImageView.image = UIImage(named: "avater")
        
     nomeSobrenomeUsuarioLabel.text = "Maria Acioli"
        nomeSobrenomeUsuarioLabel.textColor = .label
     emailUsuarioLabel.text = "mariaacioli@ceu.alem"
        emailUsuarioLabel.textColor = .label

}
    
    @IBAction func irParaOMenuButton(_ sender: Any){
        
    }
    
  
       
    
}
