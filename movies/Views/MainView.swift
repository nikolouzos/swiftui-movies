//
//  MainView.swift
//  movies
//
//  Created by Nikolaos Rafail Nikolouzos on 5/9/19.
//  Copyright © 2019 Nikolaos Rafail Nikolouzos. All rights reserved.
//

import SwiftUI

struct MainView: View {
    
    @State var movies = [Movie]()
    
    var body: some View {
        GeometryReader { geometry in
            VStack(spacing: 0.0) {
                Theme.Colors.dark.color
                    .frame(width: geometry.size.width, height: geometry.safeAreaInsets.top)
                SearchView()
                ScrollView {
                    // TODO: Add the movies layout in here
                    EmptyView()
                }
                .aspectRatio(contentMode: .fill)
                .frame(width: geometry.size.width)
            }
        }
        .edgesIgnoringSafeArea(.vertical)
    }
}

// MARK: - Previews
struct ContentViewPreviews: PreviewProvider {
    static var previews: some View {
        Group {
            ForEach(["iPhone XR", "iPhone SE"], id: \.self) { phone in
                MainView()
                .previewDevice(PreviewDevice(rawValue: phone))
                .previewDisplayName(phone)
            }
        }
    }
}
