//
//  ContentView.swift
//  movies
//
//  Created by Nikolaos Rafail Nikolouzos on 5/9/19.
//  Copyright © 2019 Nikolaos Rafail Nikolouzos. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            SearchView()
            .edgesIgnoringSafeArea(.top)
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
