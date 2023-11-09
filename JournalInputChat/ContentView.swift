//
//  ContentView.swift
//  JournalInputChat
//
//  Created by John Vasquez on 10/29/23.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedTab = 0

    var body: some View {
        TabView(selection: $selectedTab) {
            JournalView()
                .tabItem {
                    Text("Journal")
                    Image(systemName: "book")
                }
                .tag(0)
            
            SettingsView()
                .tabItem {
                    Text("Settings")
                    Image(systemName: "gear")
                }
                .tag(1)
            
        }
    }
}


#Preview {
    ContentView()
}
