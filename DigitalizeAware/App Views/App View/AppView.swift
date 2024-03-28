//
//  ContentView.swift
//  DigitalizeAware
//
//  Created by Benjamin Ott on 26.03.24.
//

import SwiftUI

struct AppView: View {
    
    @State private var selection = 0
    
    var body: some View {
        TabView(selection: $selection) {
            Home()
                .tabItem {
                    Image(systemName: "house.circle")
                    Text("Home")
                }
                .tag(0)
            Community()
                .tabItem {
                    Image(systemName: "shared.with.you.circle.fill")
                    Text("Community")
                }
                .tag(1)
            Information()
                .tabItem {
                    Image(systemName: "info.circle")
                    Text("Info")
                }
                .tag(2)
            TipsAndResources()
                .tabItem {
                    Image(systemName: "lightbulb.circle.fill")
                    Text("Tips & Resources")
                }
                .tag(3)
            Settings()
                .tabItem {
                    Image(systemName: "gearshape.fill")
                    Text("Settings")
                }
                .tag(4)
        }
        .accentColor(.teal)
        .navigationBarBackButtonHidden(true)
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}

