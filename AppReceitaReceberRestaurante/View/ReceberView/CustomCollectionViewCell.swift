//
//  CustomCollectionViewCell.swift
//  AppReceitaReceberRestaurante
//
//  Created by Maíra Preto on 03/12/19.
//  Copyright © 2019 Maíra Acioli. All rights reserved.
//

import UIKit

class CustomCollectionViewCell: UICollectionViewCell {

    
    @IBOutlet weak var tagLabel: UILabel!
    
    var genericData: GenericData?
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        
    }

    func setupViewNaCollection(){

        self.tagLabel.text = "chá da tarde"
//        self.tagLabel.text = genericData?.tag

        self.tagLabel.textColor = .black
        self.tagLabel.layer.borderWidth = 1
        
        self.tagLabel.layer.borderColor = UIColor.black.cgColor
        self.tagLabel.tintColor = UIColor.white
        self.tagLabel.layer.cornerRadius = 5
       
               
    }
    
    
    
}
