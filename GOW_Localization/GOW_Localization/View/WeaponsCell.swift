//
//  WeaponsCell.swift
//  GOW_Localization
//
//  Created by Azul Alfaro on 30/08/24.
//

import UIKit

class WeaponsCell: UITableViewCell {
    

    @IBOutlet weak var weaponsDescription: UILabel!
    @IBOutlet weak var weaponsImage: UIImageView!
    @IBOutlet weak var weaponsTitle: UILabel!
    


    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
