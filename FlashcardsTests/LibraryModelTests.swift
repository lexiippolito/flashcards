//
//  LibraryModelTests.swift
//  FlashcardsTests
//
//  Created by Lexi on 11/10/25.
//

import XCTest
@testable import Flashcards

final class LibraryModelTests: XCTestCase {
    var libraryModel: LibraryModel!

    func test_firstInit_loadsDecksFromUserDefaults() {
        let libraryModel = LibraryModel()
        XCTAssertEqual(libraryModel.decks.count, 0)
    }
    
//    func test_createNewDeck_addsDeckToLibraryAndSavesToUserDefaults() {
//        libraryModel = LibraryModel()
//        let deck = 
//        libraryModel.addDeck(deck)
//    }
}
