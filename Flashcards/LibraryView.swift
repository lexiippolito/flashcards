//
//  LibraryView.swift
//  Flashcards
//
//  Created by Lexi on 10/20/25.
//

import SwiftUI

struct LibraryView: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading) {
                    Text("Hi")
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
