//
//  Welcome.swift
//  DigitalizeAware
//
//  Created by Benjamin Ott on 26.03.24.
//

import SwiftUI

struct Welcome: View {
    
    @State private var isWhiteShadow = true
    @State private var isSignInSignUpActive = false
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.black.edgesIgnoringSafeArea(.all)
                VStack {
                    Text("Welcome to")
                        .font(.title)
                        .bold()
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .padding(.top)
                    HStack {
                        Text("D")
                            .foregroundColor(.teal)
                            .font(Font.custom("Baskerville-Bold", size: 46))
                        + Text("IGITALIZE")
                            .foregroundColor(.white)
                            .font(Font.custom("Baskerville-Bold", size: 28))
                        + Text("A")
                            .foregroundColor(.teal)
                            .font(Font.custom("Baskerville-Bold", size: 46))
                        + Text("WARE")
                            .foregroundColor(.white)
                            .font(Font.custom("Baskerville-Bold", size: 28))
                    }
                    Divider()
                    Text("This App is your ultimate source for current information, resources, and community interactions surrounding the impacts of digitalization.")
                        .bold()
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .padding(.bottom)
                    HStack {
                        Spacer()
                        NavigationLink(destination: SignInSignUp()) {
                            Image(systemName: "chevron.forward.2")
                                .foregroundColor(.black)
                                .bold()
                                .padding(8)
                                .background(Color.white)
                                .cornerRadius(10)
                        }
                    }
                }
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .padding()
                        .foregroundColor(.clear)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(isWhiteShadow ? Color.white : Color.teal, lineWidth: 3)
                                .shadow(color: isWhiteShadow ? .white : .teal, radius: 10)
                        )
                        .onAppear {
                            withAnimation(Animation.linear(duration: 1).repeatForever()) {
                                self.isWhiteShadow.toggle()
                            }
                        }
                )
                .padding()
            }
        }
    }
}

struct Welcome_Previews: PreviewProvider {
    static var previews: some View {
        Welcome()
    }
}
