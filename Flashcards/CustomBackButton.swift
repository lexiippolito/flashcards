//
//  CustomBackButton.swift
//  Flashcards
//
//  Created by Lexi on 11/8/25.
//

import SwiftUI

struct CustomBackButton: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        Button(action: {
            dismiss()
        }) {
            Image(systemName: "chevron.backward.circle.fill")
                .imageScale(.large)
                .foregroundStyle(.black)
        }
    }
}

#Preview {
    CustomBackButton()
}
