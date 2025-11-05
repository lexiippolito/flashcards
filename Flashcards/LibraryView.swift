//
//  LibraryView.swift
//  Flashcards
//
//  Created by Lexi on 10/20/25.
//

import SwiftUI

struct LibraryView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text(Strings.Library)
                    .font(.system(size: CGFloat(FontSizes.largeTitleInt)))
                            Spacer()
                Image(systemName: "gearshape.fill")
            }
            Text("settings icon next to title")
        }
//        .background(.yellow)
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
        .padding()
//        .background(.red)
    }
}

#Preview {
    LibraryView()
}
