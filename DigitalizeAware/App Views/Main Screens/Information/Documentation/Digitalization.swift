//
//  Digitalization.swift
//  DigitalizeAware
//
//  Created by Benjamin Ott on 29.03.24.
//

import SwiftUI

struct Digitalization: View {
    
    let documentation = Documentation()
    
    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.top)
            VStack {
                Text(documentation.docPart1)
                    .foregroundColor(.black)
                    .font(.custom("SF Pro", size: 16))
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 5).fill(Color.white.opacity(0.8)))
                    .multilineTextAlignment(.center)
                Text(documentation.docPart2)
                    .foregroundColor(.black)
                    .font(.custom("SF Pro", size: 16))
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 5).fill(Color.white.opacity(0.8)))
                    .multilineTextAlignment(.center)
                Text(documentation.docPart3)
                    .foregroundColor(.black)
                    .font(.custom("SF Pro", size: 16))
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 5).fill(Color.white.opacity(0.8)))
                    .multilineTextAlignment(.center)
                Text(documentation.docPart4)
                    .foregroundColor(.black)
                    .font(.custom("SF Pro", size: 16))
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 5).fill(Color.white.opacity(0.8)))
                    .multilineTextAlignment(.center)
                Text(documentation.docPart5)
                    .foregroundColor(.black)
                    .font(.custom("SF Pro", size: 16))
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 5).fill(Color.white.opacity(0.8)))
                    .multilineTextAlignment(.center)
                Text(documentation.docPart6)
                    .foregroundColor(.black)
                    .font(.custom("SF Pro", size: 16))
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 5).fill(Color.white.opacity(0.8)))
                    .multilineTextAlignment(.center)
            }
            .padding()
        }
    }
}

struct Digitalization_Previews: PreviewProvider {
    static var previews: some View {
        Digitalization()
    }
}
