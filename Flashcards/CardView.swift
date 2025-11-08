//
//  CardView.swift
//  Flashcards
//
//  Created by Lexi on 11/4/25.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        Text("Hellooooo")
            .font(.largeTitle)
            .padding()
            .frame(width: 300, height: 200)
            .background(RoundedRectangle(cornerRadius: 16).stroke(Color.black, lineWidth: 2))
    }
}

#Preview {
    CardView()
}
