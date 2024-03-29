//
//  NewsDV.swift
//  DigitalizeAware
//
//  Created by Benjamin Ott on 29.03.24.
//

import SwiftUI

struct AllNews: View {
    
    @StateObject var newsVM = NewsVM()
    
    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.top)
            ScrollView {
                VStack {
                    ForEach(newsVM.articles.prefix(11), id: \.title) { article in
                        ArticleCard(article: article)
                    }
                }
                .onAppear {
                    newsVM.fetchData()
                }
            }
        }
    }
}

struct AllNews_Previews: PreviewProvider {
    static var previews: some View {
        AllNews()
    }
}

