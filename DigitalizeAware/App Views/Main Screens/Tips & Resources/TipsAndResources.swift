//
//  TipsAndResources.swift
//  DigitalizeAware
//
//  Created by Benjamin Ott on 28.03.24.
//

import SwiftUI

struct TipsAndResources: View {
    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.top)
            VStack {
                Text("Tips & Resources")
                    .foregroundColor(.white)
            }
        }
    }
}

struct TipsAndResources_Previews: PreviewProvider {
    static var previews: some View {
        TipsAndResources()
    }
}
