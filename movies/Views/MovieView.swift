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
        return Text("Hello World")
            .font(.largeTitle)
            .foregroundColor(Theme.Colors.primaryDark.color)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
