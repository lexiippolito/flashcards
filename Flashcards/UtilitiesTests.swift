//
//  UtilitiesTests.swift
//  FlashcardsTests
//
//  Created by Lexi on 11/28/25.
//

import XCTest
@testable import Flashcards

final class UtilitiesTests: XCTestCase {
    func test_encodeDeckToJSON_encodesPopulatedDeckToJSON() {
        let deck = Deck(title: "Test deck",
                        cards: [FlashcardModel(front: "This is the front",
                                               back: "This is the back")])
        
        let data = Utilities.encodeDeckToJSON(deck)
        
        print("hi i have no idea what's gonna happen but i'm dying to see lol")
        print(data!)
    }
}
