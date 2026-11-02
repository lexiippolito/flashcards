//
//  HomeView.swift
//  Flashcards
//
//  Created by Lexi on 9/15/25.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading) {
                Text(Strings.title)
                    .fontWeight(.bold)
                    .font(.largeTitle)
//                    .padding()
                    .foregroundStyle(Color.hotPink)
                
                Text(Strings.intro)
                
                Spacer()
                
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding()
        }
    }
}

#Preview {
    HomeView()
}
