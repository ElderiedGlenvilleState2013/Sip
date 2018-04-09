//
//  listTableViewCell.swift
//  SipZ!
//
//  Created by McKinney family  on 4/5/18.
//  Copyright © 2018 FasTek Technologies. All rights reserved.
//

import UIKit

class listTableViewCell: UITableViewCell {
   
    @IBOutlet var priceAndStoreNameLabel: UILabel!
    
    @IBOutlet var storeListImage: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
