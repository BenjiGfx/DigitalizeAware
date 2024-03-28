//
//  AppInformation.swift
//  DigitalizeAware
//
//  Created by Benjamin Ott on 26.03.24.
//

import SwiftUI

struct AppInformation: View {
    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            VStack {
                Text("Was erwartet dich?")
                    .foregroundColor(.white)
                    .font(.title)
                    .bold()
                    .padding(.bottom)
                VStack(alignment: .leading) {
                    HStack {
                        Image(systemName: "checkmark.circle.fill")
                            .foregroundColor(.teal)
                        Text("Entdecke verschiedene Informationskategorien wie Gesundheit, Umwelt und Arbeitswelt.")
                            .foregroundColor(.teal)
                    }
                    .padding(.bottom)
                    HStack {
                        Image(systemName: "checkmark.circle.fill")
                            .foregroundColor(.teal)
                        Text("Tauche ein in interaktive Grafiken, Videos und Artikel zu digitalen Themen.")
                            .foregroundColor(.teal)
                    }
                    .padding(.bottom)
                    HStack {
                        Image(systemName: "checkmark.circle.fill")
                            .foregroundColor(.teal)
                        Text("Bleibe stets auf dem Laufenden mit Benachrichtigungen über neue Inhalte und Entwicklungen.")
                            .foregroundColor(.teal)
                    }
                    .padding(.bottom)
                    HStack {
                        Image(systemName: "checkmark.circle.fill")
                            .foregroundColor(.teal)
                        Text("Finde hilfreiche Ratschläge zu Sicherheit, Datenschutz und mehr.")
                            .foregroundColor(.teal)
                    }
                    .padding(.bottom)
                    HStack {
                        Image(systemName: "checkmark.circle.fill")
                            .foregroundColor(.teal)
                        Text("Trete einem Forum bei, kommentiere und bewerte Beiträge, und interagiere mit Gleichgesinnten.")
                            .foregroundColor(.teal)
                    }
                }
                Spacer()
            }
        }
    }
}

struct AppInformation_Previews: PreviewProvider {
    static var previews: some View {
        AppInformation()
    }
}
