//
//  ReceberViewController.swift
//  AppReceitaReceberRestaurante
//
//  Created by Maíra Preto on 13/10/19.
//  Copyright © 2019 Maíra Acioli. All rights reserved.
//

import UIKit
import Foundation

class ReceberViewController: BaseViewController {
    
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    @IBOutlet weak var receberTableView: UITableView!
    
    let receberCell = ReceberTableViewCell()
    var receberController: GenericController!
    
  
    var tipo: TipoDado = .receber
    
    var genericData: GenericData?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        receberController = GenericController(tipo: tipo)
       
        self.receberTableView.register(UINib(nibName: "ReceberTableViewCell", bundle: nil), forCellReuseIdentifier: "ReceberTableViewCell")
        self.receberTableView.delegate = self
        self.receberTableView.dataSource = self
        
        
        self.collectionView.delegate = self
        self.collectionView.dataSource = self
        self.collectionView.register(UINib(nibName: "CustomCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "CustomCollectionViewCell")
        
        let uploadData = UpLoadDados()
        uploadData.downLoad()
        
        
        
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
        
        cell.setupViewNaCollection(receber: receberController.devolveReceber(index: indexPath.row))
    
        return cell
        
    }
    
////    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
////
//////        if receberController.devolveReceber(index: indexPath.row).tag == "aperitivo" {
//////
//////        }
//
//
//    }
////
    
}
//
//if let vc = storyboard?.instantiateViewController(identifier: "ReceberGaleriaViewController") as? ReceberGaleriaViewController {
//          
//          vc.receberModel = receberController.devolveReceber(index: indexPath.row)
//          navigationController?.pushViewController(vc, animated: true)
//          
    


