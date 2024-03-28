//
//  News.swift
//  DigitalizeAware
//
//  Created by Benjamin Ott on 28.03.24.
//

import Foundation

struct Articles: Codable {
    let status: String
    let totalResults: Int
    let articles: [Article]
}

struct Article: Codable {
    let source: Source
    let author: String?
    let title, description: String
    let url: String
    let urlToImage: String?
    let publishedAt: Date
    let content: String
}

struct Source: Codable {
    let id: String?
    let name: String
}

