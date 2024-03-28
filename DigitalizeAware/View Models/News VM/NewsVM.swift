//
//  NewsVM.swift
//  DigitalizeAware
//
//  Created by Benjamin Ott on 28.03.24.
//

import Foundation

@MainActor
class NewsVM: ObservableObject {
    
    init() {
        
    }
    
    // MARK: -Variables
    
    @Published var articles = [Article]()
    
    
    //MARK: -Functions
    
    func fetchData() {
        Task {
            do {
                self.articles = try await fetchArticles()
            } catch {
                print("Request failed with error: \(error)")
            }
        }
    }
    
    private func fetchArticles() async throws -> [Article] {
        let headers = [
            "X-RapidAPI-Key": API_Keys.articlesAPI_Key
        ]
        
        guard let url = URL(string: "https://newsapi.org/v2/everything?q=digitalization") else {
            throw HTTPError.invalidURL
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        request.allHTTPHeaderFields = headers
        
        let (data, _) = try await URLSession.shared.data(for: request)
        let response = try JSONDecoder().decode(Articles.self, from: data)
        
        return response.articles
    }
}
