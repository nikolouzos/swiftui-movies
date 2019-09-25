//
//  Theme.swift
//  movies
//
//  Created by Nikolaos Rafail Nikolouzos on 5/9/19.
//  Copyright © 2019 Nikolaos Rafail Nikolouzos. All rights reserved.
//

import SwiftUI

struct Theme {
    enum Colors: String, CaseIterable {
        case primaryLight = "#f67280"
        case primaryDark = "#c06c84"
        case secondaryLight = "#6c5b7b"
        case secondaryDark = "#355c7d"
        case light = "#e4f9f5"
        case dark = "#2b2e4a"
        
        /// Turns the color to SwiftUI Color
        var color: Color? {
            return Color(hexString: self.rawValue)
        }
    }
}
