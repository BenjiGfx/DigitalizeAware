//
//  Community.swift
//  DigitalizeAware
//
//  Created by Benjamin Ott on 28.03.24.
//

import SwiftUI

struct Community: View {
    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.top)
            VStack {
                Text("Community")
                    .foregroundColor(.white)
            }
        }
    }
}

struct Community_Previews: PreviewProvider {
    static var previews: some View {
        Community()
    }
}
