//
//  Beer.swift
//  RM38841
//
//  Created by Thiago on 12/6/17.
//  Copyright © 2017 Thiago. All rights reserved.
//

import Foundation

class Beer {
    var name: String        //Nome da cerveja
    var tagline: String     //Tagline
    var description: String //Descrição da cerveja
    var abv: Double         //Teor alcoólico
    var ibu: Double         //Escala de amargor
    var image_url: String   //Imagem da cerveja
    //var id: String?
    
    //Construtor da classe
    init (name: String, tagline: String, description: String, abv: Double, ibu: Double, image_url: String) {
        self.name = name
        self.tagline = tagline
        self.description = description
        self.abv = abv
        self.ibu = ibu
        self.image_url = image_url
    }
}
