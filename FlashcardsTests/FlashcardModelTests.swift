//
//  FlashcardModelTests.swift
//  FlashcardsTests
//
//  Created by Lexi on 11/9/25.
//

import XCTest
@testable import Flashcards

final class FlashcardModelTests: XCTestCase {
    func test_flashcardInitialization_storesCorrectValues() {
        let flashcard = FlashcardModel(front: "frontValue", back: "backValue")
        
        XCTAssertEqual(flashcard.front, "frontValue", "Front value not set correctly")
        XCTAssertEqual(flashcard.back, "backValue", "Back value not set correctly")
    }
}
