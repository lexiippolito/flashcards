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
                    Button("Concurrency") {
                        viewModel.concurrency()
                    }
                    
                    Button("my dictionary async/await example ahhhhh hahaha yeah yaehhh") {
                        performGETURLRequestForDefinition(of: "purple")
                    }
                    
//                    Button("Async/await") {
//                        viewModel
//                    }
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                .padding()
                .navigationBarBackButtonHidden(true)
                .navigationTitle(Strings.Library)
                .navigationBarTitleDisplayMode(.large)
                .toolbar {
                    ToolbarItem(placement: .bottomBar) {
                        CustomBackButton()
                    }
                    ToolbarItem(placement: .bottomBar) {
                        PlusButtonView()
                    }
                }
            }
        }
    }
}

#Preview {
    LibraryView()
}
