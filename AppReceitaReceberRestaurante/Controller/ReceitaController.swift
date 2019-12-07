//
//  ReceitaController.swift
//  AppReceitaReceberRestaurante
//
//  Created by Maíra Preto on 07/12/19.
//  Copyright © 2019 Maíra Acioli. All rights reserved.
//

import Foundation
import UIKit

class ReceitaController {
    
    
    var arrayReceita = [ReceitaModel(titulo: "Pato no Tucupi", ingredientes: "1 pato, 1 litro de tucupi, 1 maço de jambu, 3 dentes de alho, 1 cebola, 2 tomates, 2 limões, 2 colheres de azeite, Pimenta de cheiro e sal a gosto.", modoDePreparo: "Corte o pato em pedaços e refoge com cebola, alho, tomate bem picados, com o azeite. Deixe cozinhar na pressão pro aproximadamente 30 min (até ficar macio). O TUCUPI: Ferver o tucupi com sal, dentes de alhos inteiros apenas amaçados. O JAMBU: Lave bem , retire as flores, quando houver, afervente em aguá e sal até amolecer, escorra e coloque no tucupi.Passe o pato em uma frigideira para ele ficar bem dourado, em seguida junte ao tucupi com o jambu, quando ferver estará pronto.Sirva com farinha d’água e/ou arroz branco.", fotoReceita: "patoNoTucupi", chefReceita: "chef Izabela Dolabela", tag: "regional"),
              
ReceitaModel(titulo: "Tacacá", ingredientes: "1 litro de tucupi, 1 dente de alho amassado, 10 camarões secos médios ou 20 camarões secos menores (sem a cabeça), 250 g de goma de mandioca, 1 l de água, ½ maço de jambu, 4 folhas de chicória-do-Pará, 1 pimenta-de-cheiro amazônica", modoDePreparo: "Leve ao fogo brando o tucupi, o alho, a chicória e a pimenta;  deixe ferver por 20 minutos. Em outra panela cozinhe as folhas de jambu por 5 minutos – escorra e reserve. Afervente o camarão seco - escorra e reserve. Em outra panela, dilua a goma em 1 l de água fria e leve ao fogo brando, mexendo sem parar até engrossar e adquirir transparência. Sirva em cuias: coloque um pouquinho de tucupi, a goma e mais tucupi. A proporção é de 70% de tucupi e 30% de goma. Finalize com folhas de jambu e 1 camarão seco", fotoReceita: "tacaca", chefReceita: "chef Izabela Dolabela", tag: "regional")
           ]
    
    
    func numberOfRowsInSectionReceita() -> Int {
          return arrayReceita.count
      }
      

      
      
      func devolveReceita(index: Int) -> ReceitaModel{
          return arrayReceita[index]
      }
    
    
}