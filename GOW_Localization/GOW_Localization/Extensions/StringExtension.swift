//
//  StringExtension.swift
//  GOW_Localization
//
//  Created by Emilio Herrera on 31/08/24.
//

import Foundation

extension String {
    var localized: String{
        return NSLocalizedString(self, comment: "")
    }
    
    func lacalized(WithComment comment : String) -> String {
        return NSLocalizedString(self, comment: comment)
    }
}
