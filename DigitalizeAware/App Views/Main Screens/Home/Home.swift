//
//  Home.swift
//  DigitalizeAware
//
//  Created by Benjamin Ott on 27.03.24.
//

import SwiftUI

struct Home: View {
    
    @State private var selection = 0

    
    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.top)
            VStack {
                Text("Home")
                    .foregroundColor(.white)
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}

