//
//  Utilities.swift
//  Flashcards
//
//  Created by Lexi on 11/28/25.
//

import Foundation


class Utilities {
    static func encodeDeckToJSON(_ deck: Deck) -> Data? {
        if let encoded = try? JSONEncoder().encode(deck.cards) {
            return encoded
           // UserDefaults.standard.set(encoded, forKey: deck.title)
        }
        return nil
    }
}
