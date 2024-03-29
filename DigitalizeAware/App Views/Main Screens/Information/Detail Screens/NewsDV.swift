//
//  NewsDV.swift
//  DigitalizeAware
//
//  Created by Benjamin Ott on 29.03.24.
//

import SwiftUI

struct NewsDV: View {
    
    let article: Article
    
    var body: some View {
            VStack {
                Text(article.title)
                    .font(.title)
                    .bold()
                AsyncImage(url: URL(string: article.urlToImage!)) { phase in
                    switch phase {
                    case .success(let image):
                        image
                            .resizable()
                            .frame(maxWidth: .infinity, maxHeight: 200)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                    case .failure(_):
                        Image(systemName: "xmark.icloud")
                            .foregroundColor(.red)
                            .font(.largeTitle)
                    case .empty:
                        Text("Loading...")
                    @unknown default:
                        EmptyView()
                    }
                }
                HStack {
                    Text(article.source.name)
                    Spacer()
                    Text(formatDateFromString(article.publishedAt))
                }
                Divider()
                Text(article.description)
                HStack {
                    Spacer()
                    Text(article.author!)
                }
                Spacer()
        }
            .padding()
    }
}

struct NewsDV_Previews: PreviewProvider {
    static var previews: some View {
        NewsDV(article: Article(source: Source(id: nil, name: "Forbes"), author: "Jonathan Kaufman", title: "How Digitalization Has Transformed The Chief Marketing Officer", description: "CMOs now cross a complex network of data analytics, technological integrations and ever-evolving consumer trends.", url: "https://www.forbes.com/sites/forbescommunicationscouncil/2024/02/29/how-digitalization-has-transformed-the-chief-marketing-officer/", urlToImage: "https://imageio.forbes.com/specials-images/imageserve/64ef6a9f2c34e27023f3933e/0x0.jpg?format=jpg&height=900&width=1600&fit=bounds", publishedAt: "2024-03-11T17:11:13Z", content: "Jonathan Kaufman is Senior Vice President and Chief Marketing Officer at Sage Dental."))
    }
}
