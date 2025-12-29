//
//  DeckModelTests.swift
//  FlashcardsTests
//
//  Created by Lexi on 11/9/25.
//

import XCTest
@testable import Flashcards

final class DeckModelTests: XCTestCase {
    var deck = Deck(title: "Test Deck")
    
    func test_init_createsDeckWithCorrectTitle() {
        XCTAssertEqual(deck.title, "Test Deck", "Deck title was not properly set")
    }
    
    func test_init_withNilCards_createsEmptyCards() {
        XCTAssertEqual(deck.cards.count, 0, "Deck initializer with nil cards did not create an empty deck")
    }
    
    func test_init_withCards_savesCardsToUserDefaults() {
        _ = Deck(title: "User Defaults Tester", cards:
                            [FlashcardModel(front: "This is a test card", back: "true"),
                             FlashcardModel(front: "This is another test card", back: "false"),
                             FlashcardModel(front: "This is the final test card", back: "true")])
        
    }
    
    func test_addCard_addsOneCardToDeck() {
        deck.addCard(FlashcardModel(front: "This is a test card", back: "true"))
        
        XCTAssertEqual(deck.cards.count, 1)
        XCTAssertEqual(deck.cards.first?.front, "This is a test card")
        XCTAssertEqual(deck.cards.first?.back, "true")
    }
    
    func test_addCard_updatesDeckInUserDefaults() {
        deck.addCard(FlashcardModel(front: "When should this card should appear in UserDefaults?", back: "After the addCard function adds it to UserDefaults"))
        
        let userDefaultsDeck = UserDefaults.standard.array(forKey: deck.title)
        let lastCard = userDefaultsDeck?.last as! FlashcardModel
        let lastCardFront = lastCard.front
        let lastCardBack = lastCard.back
        
        XCTAssertEqual(lastCardFront, "When should this card should appear in UserDefaults?")
        XCTAssertEqual(lastCardBack, "After the addCard function adds it to UserDefaults")
    }
    
    func test_addCards_addsCardArrayToDeck() {
        
    }
    
    func test_addCards_updatesDeckInUserDefaults() {
        
    }
}
