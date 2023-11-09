//
//  AddEntryView.swift
//  JournalInputChat
//
//  Created by John Vasquez on 10/29/23.
//

import SwiftUI

struct AddEntryView: View {
    @ObservedObject var journalData: JournalData
    @Binding var isPresented: Bool
    @Binding var entryText: String

    var body: some View {
        NavigationView {
            VStack {
                Text("Add New Entry")
                    .font(.largeTitle)
                    .padding()

                TextField("Enter your entry", text: $entryText)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()

                Button(action: {
                    journalData.entries.append(JournalEntry(text: entryText, date: Date(), imageName: "Heh"))
                    isPresented = false
                }) {
                    Text("Add Entry")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .padding()
            }
            .navigationBarItems(trailing: Button("Cancel") {
                isPresented = false
            })
        }
    }
}

