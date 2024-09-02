//
//  MenuOption.swift
//  GOW_Localization
//
//  Created by Azul Alfaro on 30/08/24.
//

import Foundation

struct MenuOption {
    let title: String
    let image: String
    let segue: String
    
    init(title: String, image: String, segue: String) {
        self.title = title
        self.image = image
        self.segue = segue
    }
}
