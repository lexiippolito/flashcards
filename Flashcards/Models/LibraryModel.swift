//
//  LibraryModel.swift
//  Flashcards
//
//  Created by Lexi on 11/10/25.
//

import Foundation

class LibraryModel {
    var decks: [Deck]
    
    init(decks: [Deck] = []) {
        self.decks = decks
    }
    
    func addDeck(_ deck: Deck) {
        decks.append(deck)
        UserDefaults.standard.set(decks, forKey: "library")
    }
}
