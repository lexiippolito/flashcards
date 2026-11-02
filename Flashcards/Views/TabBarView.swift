//
//  TabBarView.swift
//  Flashcards
//
//  Created by Lexi on 11/1/26.
//

import SwiftUI

struct TabBarView: View {
    var body: some View {
        TabView {
            Tab(Strings.Home, systemImage: "house") {
                HomeView()
            }
            Tab(Strings.Library, systemImage: "books.vertical") {
                LibraryView()
            }
        }
    }
}

#Preview {
    TabBarView()
}
