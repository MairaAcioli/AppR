//
//  PersonalizacaoTextField.swift
//  AppReceitaReceberRestaurante
//
//  Created by Maíra Preto on 20/10/19.
//  Copyright © 2019 Maíra Acioli. All rights reserved.
//

import Foundation

import UIKit

class Utilities {
    
    static func styleTextField(_ textfield: UITextField){
        
        let botao = CALayer()
        
        botao.frame = CGRect(x: 0, y: textfield.frame.height - 2, width: textfield.frame.width, height: 2)
        
        botao.backgroundColor = UIColor.init(red: 150/255, green: 150/255, blue: 150/255, alpha: 1).cgColor
        
        //tirar a bordar do text field
        textfield.borderStyle = .none
        
        //adicionar linha inferior na text field
        textfield.layer.addSublayer(botao)
        
    }
    
    static func styleFilledButton(_ button:UIButton){
        
        button.backgroundColor = UIColor.init(red: 150/255, green: 150/255, blue: 150/255, alpha: 1)
        button.layer.cornerRadius = 10.0
        button.tintColor = UIColor.white
    }
    
    static func styleHollowButton(_ button:UIButton){
        
        button.layer.borderWidth = 2
        button.layer.borderColor = UIColor.gray.cgColor
        button.layer.cornerRadius = 10.0
        button.tintColor = UIColor.gray
        
    }
    
    static func validarSenha(_ senha : String) -> Bool {
        
        let senhaTest = NSPredicate(format: "SELF MATCHES %@", "^(?=.*[a-z])(?=.*[$@$#!%*?&])[A-Za-z\\d$@$#!%*?&]{8,}")
        return senhaTest.evaluate(with: senha)
    }
}

