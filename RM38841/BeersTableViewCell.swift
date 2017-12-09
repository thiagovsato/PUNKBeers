//
//  BeersTableViewCell.swift
//  RM38841
//
//  Created by User on 12/6/17.
//  Copyright © 2017 Thiago. All rights reserved.
//

import UIKit

class BeersTableViewCell: UITableViewCell {
    @IBOutlet weak var lbCellName: UILabel!
    @IBOutlet weak var lbCellAbv: UILabel!
    @IBOutlet weak var ivCellImage: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
