//
//  LexiConcurrency.swift
//  Flashcards
//
//  Created by Lexi on 1/12/26.
//

import Foundation

// https://api.dictionaryapi.dev/api/v2/entries/en/<word>

func performGETURLRequestForDefinition(of word: String) { // async throws
    let url = URL(string: "https://api.dictionaryapi.dev/api/v2/entries/en/\(word)")!
    
    print(url)
    // why do we have to put it in URL()
    
    var request = URLRequest(url: url)
    request.httpMethod = "GET"
    request.setValue("application/json", forHTTPHeaderField: "Content-Type")
    
    // also prints a bunch of weird shit
//    print(request)
    
    URLSession.shared.dataTask(with: request) { data, response, error in
        do {
            if let error {
                throw error
            }
        } catch let error {
            print(error)
        }
        
        if let error {
                print("❌ error:", error)
                return
            }

            if let data {
                print("📦 raw data:", String(data: data, encoding: .utf8) ?? data)
            }

            if let response = response as? HTTPURLResponse {
                print("📡 status:", response.statusCode)
                print("📡 headers:", response.allHeaderFields)
            }
        // prints a bunch of weird shit, you can look if you want lol
//        print("data: \(String(describing: data))")
//        print("response: \(String(describing: response))")
    }
    .resume()
}

//[
//  {
//    "word": "purple",
//    "phonetic": "/ˈpɜː(ɹ).pəl/",
//    "phonetics": [
//      {
//        "text": "/ˈpɜː(ɹ).pəl/",
//        "audio": ""
//      },
//      {
//        "text": "/ˈpɝpəl/",
//        "audio": "https://api.dictionaryapi.dev/media/pronunciations/en/purple-us.mp3",
//        "sourceUrl": "https://commons.wikimedia.org/w/index.php?curid=2100498",
//        "license": {
//          "name": "BY-SA 3.0",
//          "url": "https://creativecommons.org/licenses/by-sa/3.0"
//        }
//      }
//    ],
//    "meanings": [
//      {
//        "partOfSpeech": "noun",
//        "definitions": [
//          {
//            "definition": "A colour/color that is a dark blend of red and blue; dark magenta.",
//            "synonyms": [],
//            "antonyms": []
//          },
//          {
//            "definition": "(colour theory) Any non-spectral colour on the line of purples on a colour chromaticity diagram or a colour wheel between violet and red.",
//            "synonyms": [],
//            "antonyms": []
//          },
//          {
//            "definition": "Cloth, or a garment, dyed a purple colour; especially, a purple robe, worn as an emblem of rank or authority; specifically, the purple robe or mantle worn by Ancient Roman emperors as the emblem of imperial dignity.",
//            "synonyms": [],
//            "antonyms": [],
//            "example": "to put on1 the imperial purple"
//          },
//          {
//            "definition": "(by extension) Imperial power, because the colour purple was worn by emperors and kings.",
//            "synonyms": [],
//            "antonyms": []
//          },
//          {
//            "definition": "Any of various species of mollusks from which Tyrian purple dye was obtained, especially the common dog whelk.",
//            "synonyms": [],
//            "antonyms": []
//          },
//          {
//            "definition": "The purple haze cultivar of cannabis in the kush family, either pure or mixed with others, or by extension any variety of smoked marijuana.",
//            "synonyms": [],
//            "antonyms": []
//          },
//          {
//            "definition": "Purpura.",
//            "synonyms": [],
//            "antonyms": []
//          },
//          {
//            "definition": "Earcockle, a disease of wheat.",
//            "synonyms": [],
//            "antonyms": []
//          },
//          {
//            "definition": "Any of the species of large butterflies, usually marked with purple or blue, of the genus Basilarchia (formerly Limenitis).",
//            "synonyms": [],
//            "antonyms": [],
//            "example": "the banded purple"
//          },
//          {
//            "definition": "A cardinalate.",
//            "synonyms": [],
//            "antonyms": []
//          }
//        ],
//        "synonyms": [],
//        "antonyms": []
//      },
//      {
//        "partOfSpeech": "verb",
//        "definitions": [
//          {
//            "definition": "To turn purple in colour.",
//            "synonyms": [],
//            "antonyms": []
//          },
//          {
//            "definition": "To dye purple.",
//            "synonyms": [],
//            "antonyms": []
//          },
//          {
//            "definition": "To clothe in purple.",
//            "synonyms": [],
//            "antonyms": []
//          }
//        ],
//        "synonyms": [],
//        "antonyms": []
//      },
//      {
//        "partOfSpeech": "adjective",
//        "definitions": [
//          {
//            "definition": "Having a colour/color that is a dark blend of red and blue.",
//            "synonyms": [
//              "purpureal"
//            ],
//            "antonyms": []
//          },
//          {
//            "definition": "Not predominantly red or blue, but having a mixture of Democrat and Republican support, as in purple state, purple city.",
//            "synonyms": [],
//            "antonyms": []
//          },
//          {
//            "definition": "(in Netherlands and Belgium) Mixed between social democrats and liberals.",
//            "synonyms": [],
//            "antonyms": []
//          },
//          {
//            "definition": "Imperial; regal.",
//            "synonyms": [],
//            "antonyms": []
//          },
//          {
//            "definition": "Blood-red; bloody.",
//            "synonyms": [],
//            "antonyms": []
//          },
//          {
//            "definition": "(of language) Extravagantly ornate, like purple prose.",
//            "synonyms": [],
//            "antonyms": []
//          },
//          {
//            "definition": "(of a sector, lap, etc.) Completed in the fastest time so far in a given session.",
//            "synonyms": [],
//            "antonyms": []
//          }
//        ],
//        "synonyms": [
//          "purpureal"
//        ],
//        "antonyms": [
//          "nonpurple"
//        ]
//      },
//      {
//        "partOfSpeech": "noun",
//        "definitions": [
//          {
//            "definition": "A recreational drug based on cough syrup, popular in the hip-hop community in the southern United States.",
//            "synonyms": [],
//            "antonyms": []
//          }
//        ],
//        "synonyms": [
//          "Texas tea",
//          "lean",
//          "sizzurp"
//        ],
//        "antonyms": []
//      }
//    ],
//    "license": {
//      "name": "CC BY-SA 3.0",
//      "url": "https://creativecommons.org/licenses/by-sa/3.0"
//    },
//    "sourceUrls": [
//      "https://en.wiktionary.org/wiki/purple",
//      "https://en.wiktionary.org/wiki/purple%20drank"
//    ]
//  }
//]
