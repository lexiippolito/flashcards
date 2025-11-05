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
                .font(.system(size: CGFloat(FontSizes.largeTitleInt)))
                .fontWeight(.bold)
                .padding()
                .background(RoundedRectangle(cornerRadius: 24).fill(Color.babyBlue))
            
            HStack {
                Button(action: {
                    print("goes to Library")
                }) {
                    Text(Strings.Library)
                        .foregroundStyle(.black)
                        .fontWeight(.semibold)
                }
                .padding(8)
                .background(RoundedRectangle(cornerRadius: 16).fill(Color.hotPink))
                
                Button(action: {
                    print("goes to Settings")
                }) {
                    Text(Strings.Settings)
                        .foregroundStyle(.black)
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

#Preview {
    HomeView()
}
