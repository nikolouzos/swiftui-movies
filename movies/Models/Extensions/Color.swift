//
//  Colors.swift
//  movies
//
//  Created by Nikolaos Rafail Nikolouzos on 5/9/19.
//  Copyright © 2019 Nikolaos Rafail Nikolouzos. All rights reserved.
//

import SwiftUI


extension Color {
    init?(hexString: String) {
        var chars = Array(hexString.hasPrefix("#") ? hexString.dropFirst() : hexString[...])
        let r, g, b, a: CGFloat
        switch chars.count {
        case 3:
            chars = chars.flatMap { [$0, $0] }
            fallthrough
        case 6:
            chars = ["F","F"] + chars
            fallthrough
        case 8:
            a = CGFloat(strtoul(String(chars[0...1]), nil, 16)) / 255
            r = CGFloat(strtoul(String(chars[2...3]), nil, 16)) / 255
            g = CGFloat(strtoul(String(chars[4...5]), nil, 16)) / 255
            b = CGFloat(strtoul(String(chars[6...7]), nil, 16)) / 255
        default:
            return nil
        }
        
        self.init(.sRGB, red: Double(r), green: Double(g), blue: Double(b), opacity: Double(a))
    }
}
