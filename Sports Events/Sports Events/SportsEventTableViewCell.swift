//
//  SportsEventTableViewCell.swift
//  Sports Events
//
//  Created by Jeffrey Friel on 7/21/17.
//  Copyright © 2017 Jeffrey Friel. All rights reserved.
//

import UIKit

class SportsEventTableViewCell: UITableViewCell {

    @IBOutlet weak var sportIconImageView: UIImageView!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var matchupLabel: UILabel!
    
    override func awakeFromNib() {
        
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
