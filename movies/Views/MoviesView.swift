//
//  MoviesView.swift
//  movies
//
//  Created by Nikolaos Rafail Nikolouzos on 5/9/19.
//  Copyright © 2019 Nikolaos Rafail Nikolouzos. All rights reserved.
//

import SwiftUI

struct MoviesView: View {
    
    @State var movies = [Movie]()
    
    var body: some View {
        ScrollView {
            VStack {
                SearchView()
            }
        }
        .edgesIgnoringSafeArea(.vertical)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ForEach(["iPhone XR", "iPhone SE"], id: \.self) { phone in
                MoviesView()
                .previewDevice(PreviewDevice(rawValue: phone))
                .previewDisplayName(phone)
            }
        }
    }
}
