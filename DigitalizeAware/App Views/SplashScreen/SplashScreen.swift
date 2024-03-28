//
//  SplashScreen.swift
//  DigitalizeAware
//
//  Created by Benjamin Ott on 26.03.24.
//

import SwiftUI

struct SplashScreen: View {
    
    @State private var isActive = false
    @State private var size: CGFloat = 0.5
    @State private var opacity = 0.2
    
    var body: some View {
        if isActive {
            Welcome()
        } else {
            ZStack {
                Color.black.edgesIgnoringSafeArea(.all)
                VStack {
                    VStack {
                        Image("applogo")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .clipShape(Circle())
                            .frame(maxWidth: 200, maxHeight: 200)
                            .shadow(color: Color.black.opacity(0.3), radius: 10, x: 0, y: 0)
                        HStack {
                            Text("D")
                                .foregroundColor(.teal)
                                .font(Font.custom("Baskerville-Bold", size: 50))
                            + Text("IGITALIZE")
                                .foregroundColor(.white)
                                .font(Font.custom("Baskerville-Bold", size: 28))
                            + Text("A")
                                .foregroundColor(.teal)
                                .font(Font.custom("Baskerville-Bold", size: 50))
                            + Text("WARE")
                                .foregroundColor(.white)
                                .font(Font.custom("Baskerville-Bold", size: 28))
                        }
                    }
                    .scaleEffect(size)
                    .opacity(opacity)
                    .onAppear {
                        withAnimation(.easeIn(duration: 1.2)) {
                            self.size = 0.9
                            self.opacity = 1.0
                        }
                        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                            self.isActive = true
                        }
                    }
                }
            }
        }
    }
}

struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreen()
    }
}
