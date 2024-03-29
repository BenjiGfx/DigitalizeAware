//
//  Information.swift
//  DigitalizeAware
//
//  Created by Benjamin Ott on 28.03.24.
//

import SwiftUI

struct Information: View {
    
    @StateObject var newsVM = NewsVM()
    let documentation = Documentation()
    @State private var isWhiteShadow = true

    
    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.top)
            VStack {
                VStack {
                    Text("Information")
                        .foregroundColor(.teal)
                        .font(Font.custom("Baskerville-Bold", size: 40))
                    VStack {
                        Text(documentation.intro)
                            .foregroundColor(.black)
                            .font(.custom("SF Pro", size: 16))
                            .padding(.horizontal)
                            .padding(.top)
                            .padding(.bottom, 2)
                            .multilineTextAlignment(.center)
                            .lineLimit(5)

                        NavigationLink(destination: Digitalization()) {
                            Text("Full Documentation >>")
                                .foregroundColor(.blue)
                                .padding(.bottom)
                        }
                    }
                    .background(RoundedRectangle(cornerRadius: 10).fill(Color.white.opacity(0.8)))
                    .overlay(
                               RoundedRectangle(cornerRadius: 10)
                                   .stroke(Color.teal, lineWidth: 2)
                           )
                }
                Divider()
                VStack {
                    HStack {
                        Text("News")
                            .foregroundColor(.teal)
                            .font(Font.custom("Baskerville-Bold", size: 40))

                    }
                        VStack {
                            ForEach(newsVM.articles.prefix(4), id: \.title) { article in
                                ArticleCard(article: article)
                            }
                        }
                        .onAppear {
                            newsVM.fetchData()
                        }
                    HStack {
                        Spacer()
                        NavigationLink(destination: AllNews()) {
                            Text("View All News")
                                .foregroundColor(.blue)
                                .padding(.horizontal)
                                .padding(.bottom)
                        }
                    }
                }
            }
            .padding(.horizontal)

        }
    }
}

struct Information_Previews: PreviewProvider {
    static var previews: some View {
        Information()
    }
}
