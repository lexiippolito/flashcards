//
//  FlashcardModel.swift
//  Flashcards
//
//  Created by Lexi on 11/8/25.
//

import Foundation


class FlashcardModel: Codable {
    var front: String
    var back: String
    
    init(front: String, back: String) {
        self.front = front
        self.back = back
    }
}
