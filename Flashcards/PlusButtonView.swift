//
//  PlusButtonView.swift
//  Flashcards
//
//  Created by Lexi on 11/8/25.
//

import SwiftUI

struct PlusButtonView: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        Button(action: {
            dismiss()
        }) {
            Image(systemName: "plus")
                .imageScale(.large)
                .foregroundStyle(.black)
        }
    }
}

#Preview {
    PlusButtonView()
}
