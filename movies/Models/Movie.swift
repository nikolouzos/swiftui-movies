//
//  Movie.swift
//  movies
//
//  Created by Nikolaos Rafail Nikolouzos on 9/9/19.
//  Copyright © 2019 Nikolaos Rafail Nikolouzos. All rights reserved.
//

import SwiftUI

struct Movie: Identifiable {
    var id: String
    
    var title: String
    var posterUrl: URL
    var plot: String
    
    var genres: [String]
    var year: String
    var languages: [String]
    
    var ratings: [Rating]
}
