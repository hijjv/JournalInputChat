//
//  SettingsView.swift
//  JournalInputChat
//
//  Created by John Vasquez on 10/29/23.
//

import SwiftUI

struct SettingsView: View {
    @State private var isPublicMode = true

    var body: some View {
        Form {
            Section(header: Text("Journal Mode")) {
                Toggle("Public Mode", isOn: $isPublicMode)
            }
        }
        .navigationBarTitle("Settings")
    }
}


#Preview {
    SettingsView()
}
