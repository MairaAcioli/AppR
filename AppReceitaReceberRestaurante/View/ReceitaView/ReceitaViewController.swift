//
//  ReceitaViewController.swift
//  AppReceitaReceberRestaurante
//
//  Created by Maíra Preto on 04/12/19.
//  Copyright © 2019 Maíra Acioli. All rights reserved.
//

import UIKit

class ReceitaViewController: UIViewController {
    
    @IBOutlet weak var receitaCollectionView: UICollectionView!
    
    
    var receberController: GenericController!

    override func viewDidLoad() {
        super.viewDidLoad()

        self.receitaCollectionView.delegate = self
        self.receitaCollectionView.dataSource = self
        self.receitaCollectionView.register(UINib(nibName: "ReceitaCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "ReceitaCollectionViewCell")

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension ReceitaViewController : UICollectionViewDataSource, UICollectionViewDelegate {

 func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
     
    return 2
    
    //return self.arrayCars.count
     
 }
 
 func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
     
    
     let cell : ReceitaCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "ReceitaCollectionViewCell", for: indexPath) as! ReceitaCollectionViewCell
     
    cell.setupReceitaNaCollection()
 
     return cell
     
 }
    

 
}
