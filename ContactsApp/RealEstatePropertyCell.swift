//
//  RealEstatePropertyCell.swift
//  ContactsApp
//
//  Created by yading on 19/06/2018.
//  Copyright © 2018 yading. All rights reserved.
//

import UIKit

class RealEstatePropertyCell: UITableViewCell {

    @IBOutlet weak var adress: UILabel!
    
    
    @IBOutlet weak var about: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setCell(with property: RealEstateProperty){
        adress.text = property.adress
        about.text = property.about
    }

}
