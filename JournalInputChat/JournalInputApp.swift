//
//  JournalInputChatApp.swift
//  JournalInputChat
//
//  Created by John Vasquez on 10/29/23.
//

import SwiftUI

@main
struct JournalApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(JournalData())
        }
    }
}

