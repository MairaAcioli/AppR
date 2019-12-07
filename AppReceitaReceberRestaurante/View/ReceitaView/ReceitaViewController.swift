//
//  ReceitaViewController.swift
//  AppReceitaReceberRestaurante
//
//  Created by Maíra Preto on 04/12/19.
//  Copyright © 2019 Maíra Acioli. All rights reserved.
//

import UIKit

class ReceitaViewController: BaseViewController {
    
    @IBOutlet weak var receitaCollectionView: UICollectionView!
    
    
    var receberController: GenericData!
    
    var receitaController: ReceitaController = ReceitaController()

    override func viewDidLoad() {
        super.viewDidLoad()
        

        self.receitaCollectionView.delegate = self
        self.receitaCollectionView.dataSource = self
        self.receitaCollectionView.register(UINib(nibName: "ReceitaCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "ReceitaCollectionViewCell")
        
    }
    

}

extension ReceitaViewController : UICollectionViewDataSource, UICollectionViewDelegate {

 func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
     
    return self.receitaController.arrayReceita.count
    
    
     
 }
 
 func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
     
    
    if let receitacvc = collectionView.dequeueReusableCell(withReuseIdentifier: "ReceitaCollectionViewCell", for: indexPath) as? ReceitaCollectionViewCell {
        
        receitacvc.setupReceitaNaCollection(receita: receitaController.devolveReceita(index: indexPath.row))
        receitacvc.layer.borderColor = UIColor.label.cgColor
        receitacvc.layer.borderWidth = 0.5
        receitacvc.layer.cornerRadius = 10
        
     return receitacvc
        
 }
    
return UICollectionViewCell()
 
}
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        if let vc = storyboard?.instantiateViewController(identifier: "ReceitaModoDePreparoViewController") as? ReceitaModoDePreparoViewController {
               
            vc.setupReceita(receita: receitaController.devolveReceita(index: indexPath.row))
           
            
                   navigationController?.pushViewController(vc, animated: true)
                   
                   
               }
        
        
    }
  
}
