//
//  HomeView.swift
//  Flashcards
//
//  Created by Lexi on 9/15/25.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text(Strings.title)
                .background(.pink)
                .font(.largeTitle)
                .fontWeight(.bold)
            
            Text(Strings.intro)
                .background(.blue)
            
            Text(Strings.subIntro)
                .background(.yellow)
        }
    }
}

#Preview {
    HomeView()
}
