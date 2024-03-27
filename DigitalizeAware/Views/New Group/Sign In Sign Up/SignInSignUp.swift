//
//  SignIn.swift
//  DigitalizeAware
//
//  Created by Benjamin Ott on 27.03.24.
//

import SwiftUI

struct SignInSignUp: View {
    @State private var email = ""
    @State private var password = ""
    @State private var confirmPassword = ""
    @State private var isSignUpMode = true
    @State private var isSignInMode = false
    
    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            VStack {
                Spacer()
                Image("applogo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 200)
                Spacer()
                HStack {
                    Button(action: {
                        isSignInMode = true
                        isSignUpMode = false
                    }) {
                        Text("Sign In")
                            .foregroundColor(.white)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(isSignInMode ? Color.gray : Color.gray.opacity(0.5))
                            .cornerRadius(8)
                            .padding(.leading)
                    }
                    Button(action: {
                        isSignInMode = false
                        isSignUpMode = true
                    }) {
                        Text("Sign Up")
                            .foregroundColor(.white)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(isSignUpMode ? Color.gray : Color.gray.opacity(0.5))
                            .cornerRadius(8)
                            .padding(.trailing)
                    }
                }
                TextField("Email", text: $email)
                    .padding()
                    .background(Color.white.opacity(1))
                    .cornerRadius(8)
                    .padding(.horizontal)
                
                SecureField("Password", text: $password)
                    .padding()
                    .background(Color.white.opacity(1))
                    .cornerRadius(8)
                    .padding(.horizontal)
                if isSignUpMode {
                    SecureField("Confirm Password", text: $confirmPassword)
                        .padding()
                        .background(Color.white.opacity(1))
                        .cornerRadius(8)
                        .padding(.horizontal)
                }
                HStack {
                    Spacer()
                    Text("Forgot Password?")
                        .foregroundColor(.accentColor)
                }
                .padding(.horizontal)
                Button(action: {
                    // Add action for login button
                }) {
                    Text("Login")
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.teal)
                        .cornerRadius(8)
                        .padding(.horizontal)
                }
                
                Spacer()
            }
        }
    }
}

struct SignInSignUp_Previews: PreviewProvider {
    static var previews: some View {
        SignInSignUp()
    }
}
