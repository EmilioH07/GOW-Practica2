//
//  GOWCell.swift
//  GOW_Localization
//
//  Created by Azul Alfaro on 30/08/24.
//

import UIKit

class GOWCell: UITableViewCell {

    @IBOutlet weak var menuTitle: UILabel!
    @IBOutlet weak var menuImage: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        let myFont = UIFont(name: "CGF Locust Resistance", size: 17)
        let title1Metrics = UIFontMetrics(forTextStyle: .title1)
        
        menuTitle.font = title1Metrics.scaledFont(for: myFont!)
        menuTitle.adjustsFontForContentSizeCategory = translatesAutoresizingMaskIntoConstraints
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
