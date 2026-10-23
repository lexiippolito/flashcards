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
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading) {
                    
                    
                    //                    Button("Async/await") {
                    //                        viewModel
                    //                    }
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                .padding()
                .navigationBarBackButtonHidden(true)
                .navigationTitle(Strings.Library)
            }
        }
    }
}


#Preview {
    LibraryView()
}
