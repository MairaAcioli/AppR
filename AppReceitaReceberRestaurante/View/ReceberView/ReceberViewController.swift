//
//  ReceberViewController.swift
//  AppReceitaReceberRestaurante
//
//  Created by Maíra Preto on 13/10/19.
//  Copyright © 2019 Maíra Acioli. All rights reserved.
//

import UIKit

class ReceberViewController: UIViewController {
    @IBOutlet weak var buscaSearchBar: UISearchBar!
    
    @IBOutlet weak var receberTableView: UITableView!
    
    
    
    let receberCell = ReceberTableViewCell()
    var receberController: GenericController!
    
    
    var tipo: TipoDado = .receber 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        receberController = GenericController(tipo: tipo)
        receberTableView.register(UINib(nibName: "ReceberTableViewCell", bundle: nil), forCellReuseIdentifier: "ReceberTableViewCell")
        receberTableView.delegate = self
        receberTableView.dataSource = self
    }
}

extension ReceberViewController: UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return receberController.numberOfRowsInSectionReceber()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
    
        if let receberCell = tableView.dequeueReusableCell(withIdentifier: "ReceberTableViewCell", for: indexPath) as? ReceberTableViewCell{
            
            receberCell.setUpReceber(receber: receberController.devolveReceber(index: indexPath.row))
            
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

