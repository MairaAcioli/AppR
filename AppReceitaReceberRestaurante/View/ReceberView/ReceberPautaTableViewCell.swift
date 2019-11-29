//
//  ReceberPautaTableViewCell.swift
//  AppReceitaReceberRestaurante
//
//  Created by Maíra Preto on 29/11/19.
//  Copyright © 2019 Maíra Acioli. All rights reserved.
//

import UIKit

class ReceberPautaTableViewCell: UITableViewCell {

    
    @IBOutlet weak var galeriaReceberScrollView: UIScrollView!
    
    @IBOutlet weak var receberGaleriaPageControl: UIPageControl!
    
    @IBOutlet weak var tituloReceberLabel: UILabel!
    
    @IBOutlet weak var fonteReceberLabel: UILabel!
    
    @IBOutlet weak var conteudoReceberLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }
    
    
    
}
