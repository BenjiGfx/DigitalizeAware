//
//  ArticleCard.swift
//  DigitalizeAware
//
//  Created by Benjamin Ott on 28.03.24.
//

import SwiftUI

struct ArticleCard: View {
    
    let article: Article
    
    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.top)
            VStack {
                HStack {
                    Text(article.title)
                        .frame(maxWidth: .infinity)
                        .font(.subheadline)
                        .bold()
                        .foregroundColor(.black)
                        .lineLimit(1)
                    Spacer()
                }
                HStack {
                    Text(article.source.name)
                        .font(.subheadline)
                        .foregroundColor(.gray)
                    Spacer()
                    Text(article.publishedAt, style: .date)
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
            }
            .padding()
            .padding(10)
            .background(RoundedRectangle(cornerRadius: 10).fill(Color.white))
            .padding()
            .shadow(radius: 5)
            .frame(maxHeight: 150)
        }
    }
}

struct ArticleCard_Previews: PreviewProvider {
    static var previews: some View {
        ArticleCard(article: Article(source: Source(id: nil, name: "Forbes"), author: "Jonathan Kaufman", title: "How Digitalization Has Transformed The Chief Marketing Officer", description: "CMOs now cross a complex network of data analytics, technological integrations and ever-evolving consumer trends.", url: "https://www.forbes.com/sites/forbescommunicationscouncil/2024/02/29/how-digitalization-has-transformed-the-chief-marketing-officer/", urlToImage: "https://imageio.forbes.com/specials-images/imageserve/64ef6a9f2c34e27023f3933e/0x0.jpg?format=jpg&height=900&width=1600&fit=bounds", publishedAt: Date(), content: "Jonathan Kaufman is Senior Vice President and Chief Marketing Officer at Sage Dental."))
    }
}

