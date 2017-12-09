//
//  BeersTableViewController.swift
//  RM38841
//
//  Created by User on 12/6/17.
//  Copyright © 2017 Thiago. All rights reserved.
//

import UIKit
import Kingfisher

class BeersTableViewController: UITableViewController {
    
    var dataSource: [Beer] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        loadBeers()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! ViewController
        vc.beer = dataSource[tableView.indexPathForSelectedRow!.row]
    }
    
    func loadBeers() {
        REST.loadBeers { (beers: [Beer]?) in
            if let beers = beers {
                self.dataSource = beers
                
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
            }
        }
    }
    

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "beerCell", for: indexPath) as! BeersTableViewCell
        let beer = dataSource[indexPath.row]
        
        cell.lbCellName.text = beer.name
        let abv = String(format: "%.1f", beer.abv)
        cell.lbCellAbv.text = "Teor alcoólico: "+abv
        
        let url = URL(string: beer.image_url)!
        cell.ivCellImage.kf.setImage(with: url)
        
        return cell
    }


}
