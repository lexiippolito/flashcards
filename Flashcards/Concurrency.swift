//
//  Concurrency.swift
//  Flashcards
//
//  Created by Lexi on 12/28/25.
//

import Foundation

struct PostData: Codable {
    let name: String
    let age: Int
}

struct PostResponse: Decodable {
    let json: PostData
}

struct APIProvider {
    enum NetworkingError: Error {
        case encodingFailed(innerError: EncodingError)
        case decodingFailed(innerError: DecodingError)
        case invalidStatusCode(statusCode: Int)
        case requestFailed(innerError: URLError)
        case otherError(innerError: Error)
        
        case invalidResponse
    }
}

extension APIProvider {
    func performPOSTURLRequest(completion: @escaping (Result<PostData, NetworkingError>) -> Void) {
        let url = URL(string: "https://httpbin.org/post")!
        
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        
        let postData: PostData = .init(name: "Lexi", age: 24) // .init()?
        
        do {
            request.httpBody = try JSONEncoder().encode(postData)
        } catch let error as EncodingError {
            // look at this connection to completion()
            completion(.failure(.encodingFailed(innerError: error)))
            return
        } catch {
            completion(.failure(.otherError(innerError: error)))
            return
        }
        
        // `request` we just created ^
        URLSession.shared.dataTask(with: request) { data, response, error in
            do {
                if let error {
                    throw error
                }
                
                guard let data, let httpResponse = response as? HTTPURLResponse else {
                    throw NetworkingError.invalidResponse
                }
                
                guard (200...299).contains(httpResponse.statusCode) else {
                    throw NetworkingError.invalidStatusCode(statusCode: httpResponse.statusCode)
                }
                
                let decodedResponse = try JSONDecoder().decode(PostResponse.self, from: data)
                print("The JSON response contains a name: \(decodedResponse.json.name) and an age: \(decodedResponse.json.age)")
                
                completion(.success(decodedResponse.json))
            } catch let error as DecodingError {
                completion(.failure(.decodingFailed(innerError: error)))
            } catch let error as EncodingError {
                completion(.failure(.encodingFailed(innerError: error)))
            } catch let error as URLError {
                completion(.failure(.requestFailed(innerError: error)))
            } catch let error as NetworkingError {
                completion(.failure(error))
            } catch {
                completion(.failure(.otherError(innerError: error)))
            }
        }.resume() // actually starts/runs the network request, without it the request is created but never executed (i have more questions)
    }
    
    func performPOSTURLRequestAsyncAwait() async throws(NetworkingError) -> PostData {
        do {
            let url = URL(string: "https://httpbin.org/post")!
            
            var request = URLRequest(url: url)
            
            request.httpMethod = "POST"
            
            request.setValue("application/json", forHTTPHeaderField: "Content-Type")
            
            let postData = PostData(name: "Lexi", age: 24)
            let jsonData = try JSONEncoder().encode(postData)
            
            request.httpBody = jsonData
            
            let (data, response) = try await URLSession.shared.data(for: request)
            
            guard let statusCode = (response as? HTTPURLResponse)?.statusCode else {
                throw NetworkingError.invalidStatusCode(statusCode: -1)
            }
            
            guard(200...299).contains(statusCode) else {
                throw NetworkingError.invalidStatusCode(statusCode: statusCode)
            }
            
            let decodedResponse = try JSONDecoder().decode(PostResponse.self, from: data)
            
            print("The JSON response contains a name: \(decodedResponse.json.name) and an age: \(decodedResponse.json.age)")
            
            return decodedResponse.json
            
        } catch let error as DecodingError {
            throw .decodingFailed(innerError: error)
        } catch let error as EncodingError {
            throw .encodingFailed(innerError: error)
        } catch let error as URLError {
            throw .requestFailed(innerError: error)
        } catch let error as NetworkingError {
            throw error
        } catch {
            throw .otherError(innerError: error)
        }
    }
}

// - async let x = try await ... is invalid bc it invalidates the point of concurrency – "async let" = "fire and forget for now", "await" = "stop here and wait for the value if it's not done yet then continue" – "async let" allows us to execute things in parallel, multiple things at the same time
// - "async let x, async let y, async let z" does NOT guarantee which order they will execute in, all we know is that they can run at the same time
