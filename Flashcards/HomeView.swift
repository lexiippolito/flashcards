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
                    .font(.system(size: CGFloat(FontSizes.largeTitleInt)))
                    .fontWeight(.bold)
//                    .padding()
                    .foregroundStyle(Color.babyBlue)
                
                Text(Strings.intro)
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
//                    .frame(maxWidth: .infinity, alignment: .trailing)
                
                Spacer()
                
                HStack {
                    NavigationLink {
                        LibraryView()
                    } label: {
                        Text(Strings.Library)
                            .foregroundStyle(.black)
                            .font(.title)
                            .fontWeight(.semibold)
                    }
                    .padding(8)
                    .background(RoundedRectangle(cornerRadius: 16).fill(Color.hotPink))
                    
                    NavigationLink {
                        SettingsView()
                    } label: {
                        Text(Strings.Settings)
                            .foregroundStyle(.black)
                            .font(.title)
                            .fontWeight(.semibold)
                    }
                    .padding(8)
                    .background(RoundedRectangle(cornerRadius: 16).fill(Color.softOrange))
                }
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding()
        }
    }
}

#Preview {
    HomeView()
}
