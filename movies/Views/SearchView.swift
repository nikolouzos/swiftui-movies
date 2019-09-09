//
//  SearchView.swift
//  movies
//
//  Created by Nikolaos Rafail Nikolouzos on 5/9/19.
//  Copyright © 2019 Nikolaos Rafail Nikolouzos. All rights reserved.
//

import SwiftUI

/// The View that searches the movies directory
struct SearchView: View {
    
    @State var searchTerm: String = ""
    
    var body: some View {
        
        return VStack(spacing: 4) {
            Text("Welcome back!")
                .font(.title)
                .foregroundColor(Theme.Colors.light.color)
                .edgesIgnoringSafeArea(.top)
                .padding(.top)
            Text("What movies will we watch today?")
                .fontWeight(.light)
                .multilineTextAlignment(.leading)
                .scaledToFill()
                .font(.headline)
                .foregroundColor(Theme.Colors.primaryLight.color)
            
            // The search field layout
            SearchField(searchTerm: $searchTerm)
        }
        .padding()
        .background(Theme.Colors.dark.color)
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
            .previewLayout(.sizeThatFits)
    }
}

/// The search field view for the search view
struct SearchField: View {
    
    @Binding var searchTerm: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 2) {
            Text("Search for a movie")
                .foregroundColor(Theme.Colors.light.color)
                .padding(.leading, 24)
            
            // TODO: The placeholder will be dynamic in the future and update every few seconds
            TextField("Once upon a time in Hollywood", text: $searchTerm)
                .padding(.vertical, 12)
                .padding(.horizontal, 24)
                .foregroundColor(.white)
                .background(
                    // Make the textField rounded
                    RoundedRectangle(cornerRadius: 100, style: .circular)
                        .foregroundColor(Theme.Colors.secondaryLight.color))
        }
        .padding(.top, 4)
    }
}
