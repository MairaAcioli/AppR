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

    override func viewDidLoad() {
        super.viewDidLoad()
        

        self.receitaCollectionView.delegate = self
        self.receitaCollectionView.dataSource = self
        self.receitaCollectionView.register(UINib(nibName: "ReceitaCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "ReceitaCollectionViewCell")
        
    }
    

}

extension ReceitaViewController : UICollectionViewDataSource, UICollectionViewDelegate {

 func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
     
    return 20
    
    //return self.arrayCars.count
     
 }
 
 func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
     
    
    if let receitacvc = collectionView.dequeueReusableCell(withReuseIdentifier: "ReceitaCollectionViewCell", for: indexPath) as? ReceitaCollectionViewCell {
    
        receitacvc.setupReceitaNaCollection()
        receitacvc.layer.borderColor = UIColor.label.cgColor
        receitacvc.layer.borderWidth = 0.5
        receitacvc.layer.cornerRadius = 10
        
     return receitacvc
        
 }
    
return UICollectionViewCell()
 
}
  
}
