//
//  LibraryView.swift
//  Flashcards
//
//  Created by Lexi on 10/20/25.
//

import SwiftUI

struct LibraryView: View {
    @StateObject private var viewModel = LibraryViewModel()
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        Text(Strings.Library)
            .font(.largeTitle)
            .fontWeight(.bold)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding()
        
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading) {
                    
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                .padding()
                .navigationBarBackButtonHidden(true)
            }
        }
    }
}


#Preview {
    LibraryView()
}
