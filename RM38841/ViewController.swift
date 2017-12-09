//
//  ViewController.swift
//  RM38841
//
//  Created by User on 12/4/17.
//  Copyright © 2017 Thiago. All rights reserved.
//

import UIKit
import Kingfisher

class ViewController: UIViewController {

    @IBOutlet weak var lbBeerName: UILabel!
    @IBOutlet weak var lbBeerTagline: UILabel!
    @IBOutlet weak var lbBeerDescription: UILabel!
    @IBOutlet weak var lbBeerAbv: UILabel!
    @IBOutlet weak var lbBeerIbu: UILabel!
    @IBOutlet weak var ivBeerImage: UIImageView!
    
    var beer: Beer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if beer != nil {
            lbBeerName.text = beer.name
            lbBeerTagline.text = beer.tagline
            lbBeerDescription.text = beer.description
            lbBeerAbv.text = "\(beer.abv)"
            lbBeerIbu.text = "\(beer.ibu)"
            
            let url = URL(string: beer.image_url)!
            ivBeerImage.kf.setImage(with: url)
        }
        
    }


}

