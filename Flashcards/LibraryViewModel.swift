//
//  LibraryViewModel.swift
//  Flashcards
//
//  Created by Lexi on 12/28/25.
//

import Foundation

class LibraryViewModel: ObservableObject {
    private let apiProvider = APIProvider()
    
    func concurrency() {
        apiProvider.performPOSTURLRequest { result in // trailing closure syntax/syntactic sugar :) – if the last or only parameter of a func is a closure, you can omit the param name (why we don't have to say "completion: ...")
            DispatchQueue.main.async {
                switch result {
                case .success(let data):
                    print(data)
                case .failure(let error):
                    print(error)
                }
            }
        }
    }
    
    func lexiConcurrency(word: String) {
        performGETURLRequestForDefinition(of: word)
       
    }
    
//    func asyncAwait() {
//        apiProvider.performPOSTURLRequestAsyncAwait { result in
//            
//        }
//    }
}
