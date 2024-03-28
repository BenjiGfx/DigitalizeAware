//
//  Settings.swift
//  DigitalizeAware
//
//  Created by Benjamin Ott on 28.03.24.
//

import SwiftUI

struct Settings: View {
    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.top)
            VStack {
                Text("Settings")
                    .foregroundColor(.white)
            }
        }
    }
}

struct Settings_Previews: PreviewProvider {
    static var previews: some View {
        Settings()
    }
}
