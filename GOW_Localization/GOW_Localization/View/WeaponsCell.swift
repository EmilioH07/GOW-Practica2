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
        
        // Add Locus and CGO Autoresizing
        
        
        
        let WTFont = UIFont(name: "CGF Locust Resistance", size: 17)
        let title1Metrics = UIFontMetrics(forTextStyle: .title1)
        
        weaponsTitle.font = title1Metrics.scaledFont(for: WTFont!)
        weaponsTitle.adjustsFontForContentSizeCategory = translatesAutoresizingMaskIntoConstraints
        
        let WDFont = UIFont(name: "PressStart2P-Regular", size: 15)
        let DescriptionMetrics = UIFontMetrics(forTextStyle: .title3)
        
        weaponsDescription.font = DescriptionMetrics.scaledFont(for: WDFont!)
        weaponsDescription.adjustsFontForContentSizeCategory = translatesAutoresizingMaskIntoConstraints
        
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
