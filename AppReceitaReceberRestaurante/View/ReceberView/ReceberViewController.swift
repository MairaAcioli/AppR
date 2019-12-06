//
//  ReceberViewController.swift
//  AppReceitaReceberRestaurante
//
//  Created by Maíra Preto on 13/10/19.
//  Copyright © 2019 Maíra Acioli. All rights reserved.
//

import UIKit
import Foundation

class ReceberViewController: UIViewController {
    
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    @IBOutlet weak var receberTableView: UITableView!
    
    let receberCell = ReceberTableViewCell()
    var receberController: GenericController!
    
  
    var tipo: TipoDado = .receber
    
    var genericData: GenericData?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        receberController = GenericController(tipo: tipo)
       
        receberTableView.register(UINib(nibName: "ReceberTableViewCell", bundle: nil), forCellReuseIdentifier: "ReceberTableViewCell")
        receberTableView.delegate = self
        receberTableView.dataSource = self
        
        
        self.collectionView.delegate = self
        self.collectionView.dataSource = self
        self.collectionView.register(UINib(nibName: "CustomCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "CustomCollectionViewCell")
        
      
        
        
        
    }
}

extension ReceberViewController: UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return receberController.numberOfRowsInSectionReceber()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
    
        if let receberCell = tableView.dequeueReusableCell(withIdentifier: "ReceberTableViewCell", for: indexPath) as? ReceberTableViewCell{
            
            receberCell.setUpReceber(receber: receberController.devolveReceber(index: indexPath.row))
            
//            receberCell.layer.borderColor = UIColor.label.cgColor
            
            return receberCell
        }
        
        return UITableViewCell()
}
        
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let vc = storyboard?.instantiateViewController(identifier: "ReceberGaleriaViewController") as? ReceberGaleriaViewController {
            
            vc.receberModel = receberController.devolveReceber(index: indexPath.row)
            navigationController?.pushViewController(vc, animated: true)
            
            
        }
     
    }
    
}

extension ReceberViewController : UICollectionViewDataSource, UICollectionViewDelegate {
   
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return self.receberController.array.count
        //return self.arrayCars.count
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
       
        let cell : CustomCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "CustomCollectionViewCell", for: indexPath) as! CustomCollectionViewCell
        
        cell.setupViewNaCollection()
    
        return cell
        
    }
    
    
    
}


    


