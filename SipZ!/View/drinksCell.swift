//
//  drinksCell.swift
//  SipZ!
//
//  Created by McKinney family  on 4/10/18.
//  Copyright © 2018 FasTek Technologies. All rights reserved.
//

import UIKit

class drinksCell: UITableViewCell {

    @IBOutlet weak var drinksImage: UIImageView!
    @IBOutlet weak var drinksNamesLabel: UILabel!
    @IBOutlet weak var drinkPriceLabel: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func updateViews(drinkProduct: DrinkProduct) {
        drinksImage.image = UIImage(named: drinkProduct.imageName)
        drinksNamesLabel.text = drinkProduct.title
        drinkPriceLabel.text = drinkProduct.price
        
    }
    
}
