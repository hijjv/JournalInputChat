//
//  JournalView.swift
//  JournalInputChat
//
//  Created by John Vasquez on 10/29/23.
//

import SwiftUI

struct JournalView: View {
    @StateObject var journalData = JournalData()
    @State private var isAddingEntry = false
    @State private var newEntryText = ""

    var body: some View {
        NavigationView {
            LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 16) {
                ForEach(journalData.entries) { entry in
                    NavigationLink(destination: EntryDetailView(entry: entry)) {
                        JournalEntryView(entry: entry)
                    }
                }
            }
            .padding()
            .navigationBarTitle("Journal")
            .navigationBarItems(trailing: Button(action: {
                isAddingEntry = true
            }) {
                Image(systemName: "plus.circle.fill")
            })
        }
        .sheet(isPresented: $isAddingEntry) {
            AddEntryView(journalData: journalData, isPresented: $isAddingEntry, entryText: $newEntryText)
        }
    }
}

#Preview {
    JournalView()
}
