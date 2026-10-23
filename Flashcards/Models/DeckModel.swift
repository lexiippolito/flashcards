//
//  DeckModel.swift
//  Flashcards
//
//  Created by Lexi on 11/9/25.
//

import Foundation


struct Deck {
    var title: String
    private(set) var cards: [FlashcardModel]
    
    init(title: String, cards: [FlashcardModel] = []) {
        self.title = title
        self.cards = cards
        
        // UserDefaults.standard.set(cards, forKey: title)
    }
    
    mutating func addCard(_ card: FlashcardModel) {
        cards.append(card)
        
        UserDefaults.standard.set(cards, forKey: title)
    }
}
