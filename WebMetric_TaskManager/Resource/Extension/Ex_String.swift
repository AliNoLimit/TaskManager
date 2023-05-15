//
//  Ex_String.swift
//  WebMetric_TaskManager
//
//  Created by AliNoLimit on 5/15/23.
//

import Foundation

extension String {
    func capitalizingFirstLetter() -> String {
        return prefix(1).capitalized + dropFirst()
    }

    mutating func capitalizeFirstLetter() {
        self = self.capitalizingFirstLetter()
    }
}

extension String {
    var localizedMessage: String {
        let selectedLanguage = "en"
        let path = Bundle.main.path(forResource: selectedLanguage, ofType: "lproj")
        let bundle = Bundle(path: path!)
        return NSLocalizedString(self, tableName: "LocalizableMessage", bundle: bundle!, value: "", comment: "")
    }
    
    var localized: String {
        let selectedLanguage = "en"
        let path = Bundle.main.path(forResource: selectedLanguage, ofType: "lproj")
        let bundle = Bundle(path: path!)
        return NSLocalizedString(self, tableName: "LocalizableWord", bundle: bundle!, value: "", comment: "")
    }
}
