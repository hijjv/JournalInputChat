//
//  JournalEntry.swift
//  JournalInputChat
//
//  Created by John Vasquez on 10/29/23.
//

import SwiftUI

struct JournalEntry: Identifiable {
    let id = UUID()
    var text: String
    var date: Date
    var imageName: String
}

class JournalData: ObservableObject {
    @Published var entries: [JournalEntry] = []
}
