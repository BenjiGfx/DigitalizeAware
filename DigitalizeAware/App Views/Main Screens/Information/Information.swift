//
//  Information.swift
//  DigitalizeAware
//
//  Created by Benjamin Ott on 28.03.24.
//

import SwiftUI

struct Information: View {
    
    @StateObject var newsVM = NewsVM()
    
    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.top)
            VStack {
                Text("Information")
                    .foregroundColor(.white)
                ScrollView {
                    VStack {
                        ForEach(newsVM.articles, id: \.title) { article in
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
}

struct Information_Previews: PreviewProvider {
    static var previews: some View {
        Information()
    }
}
