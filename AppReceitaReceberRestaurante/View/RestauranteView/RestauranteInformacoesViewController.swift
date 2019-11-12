//
//  RestauranteInformacoesViewController.swift
//  AppReceitaReceberRestaurante
//
//  Created by Maíra Preto on 10/11/19.
//  Copyright © 2019 Maíra Acioli. All rights reserved.
//

import UIKit

class RestauranteInformacoesViewController: UIViewController {

  var passedData = (nomeRestaurante: "Figo", foto: #imageLiteral(resourceName: "amorDeOutono06"), precoRestaurante: "0")
        
        override func viewDidLoad() {
            super.viewDidLoad()
            self.view.backgroundColor = UIColor.white
            
            setupViews()
        }
        
        func setupViews() {
            self.view.addSubview(myScrollView)
            myScrollView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
            myScrollView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
            myScrollView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
            myScrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
            myScrollView.contentSize.height = 800
            
            myScrollView.addSubview(containerView)
            containerView.centerXAnchor.constraint(equalTo: myScrollView.centerXAnchor).isActive = true
            containerView.topAnchor.constraint(equalTo: myScrollView.topAnchor).isActive = true
            containerView.widthAnchor.constraint(equalTo: myScrollView.widthAnchor).isActive = true
            containerView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
            
            containerView.addSubview(imageView)
            imageView.leftAnchor.constraint(equalTo: containerView.leftAnchor).isActive = true
            imageView.topAnchor.constraint(equalTo: containerView.topAnchor).isActive = true
            imageView.rightAnchor.constraint(equalTo: containerView.rightAnchor).isActive = true
            imageView.heightAnchor.constraint(equalToConstant: 200).isActive = true
            imageView.image = passedData.foto
            
            containerView.addSubview(nomeRestauranteLabel)
            nomeRestauranteLabel.leftAnchor.constraint(equalTo: containerView.leftAnchor, constant: 15).isActive = true
            nomeRestauranteLabel.topAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true
            nomeRestauranteLabel.rightAnchor.constraint(equalTo: containerView.rightAnchor, constant: -15).isActive = true
            nomeRestauranteLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
            nomeRestauranteLabel.text = passedData.nomeRestaurante
            
            containerView.addSubview(precoRestauranteLabel)
            precoRestauranteLabel.leftAnchor.constraint(equalTo: precoRestauranteLabel.leftAnchor).isActive = true
            precoRestauranteLabel.topAnchor.constraint(equalTo: precoRestauranteLabel.bottomAnchor).isActive = true
            precoRestauranteLabel.rightAnchor.constraint(equalTo: precoRestauranteLabel.rightAnchor).isActive = true
            precoRestauranteLabel.heightAnchor.constraint(equalToConstant: 40).isActive = true
            precoRestauranteLabel.text = "R$\(passedData.precoRestaurante)"
            
            containerView.addSubview(categoriaRestauranteLabel)
            categoriaRestauranteLabel.leftAnchor.constraint(equalTo: nomeRestauranteLabel.leftAnchor).isActive = true
            categoriaRestauranteLabel.topAnchor.constraint(equalTo: precoRestauranteLabel.bottomAnchor, constant: 10).isActive = true
            categoriaRestauranteLabel.rightAnchor.constraint(equalTo: nomeRestauranteLabel.rightAnchor).isActive = true
            categoriaRestauranteLabel.text = "comida araba"
            categoriaRestauranteLabel.sizeToFit()
        }
        
        let myScrollView: UIScrollView = {
            let scrollView = UIScrollView()
            scrollView.translatesAutoresizingMaskIntoConstraints = false
            scrollView.showsVerticalScrollIndicator = false
            scrollView.showsHorizontalScrollIndicator = false
            return scrollView
        }()
        
        let containerView: UIView = {
            let view = UIView()
            view.translatesAutoresizingMaskIntoConstraints = false
            return view
        }()
        
        let imageView: UIImageView = {
            let view = UIImageView()
            view.image = #imageLiteral(resourceName: "a")
            view.contentMode = .scaleAspectFill
            view.clipsToBounds = true
            view.translatesAutoresizingMaskIntoConstraints = false
            return view
        }()
        
        let nomeRestauranteLabel: UILabel = {
            let label = UILabel()
            label.text = "NomeRestaurante"
            label.font = UIFont.systemFont(ofSize: 28)
            label.textColor = UIColor.black
            label.translatesAutoresizingMaskIntoConstraints = false
            return label
        }()
        
        let precoRestauranteLabel: UILabel = {
            let label = UILabel()
            label.text = "PrecoRestaurante"
            label.font = UIFont.boldSystemFont(ofSize: 24)
            label.textColor = UIColor(white: 0.5, alpha: 1)
            label.translatesAutoresizingMaskIntoConstraints = false
            return label
        }()
        
        let categoriaRestauranteLabel: UILabel = {
            let label = UILabel()
            label.text = "CategoriaRestaurante"
            label.numberOfLines = 0
            label.font = UIFont.systemFont(ofSize: 20)
            label.textColor = UIColor.gray
            label.translatesAutoresizingMaskIntoConstraints = false
            return label
        }()
    }
