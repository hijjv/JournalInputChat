//
//  EntryDetailView.swift
//  JournalInputChat
//
//  Created by John Vasquez on 10/29/23.
//

import SwiftUI

struct EntryDetailView: View {
    let entry: JournalEntry

    var body: some View {
        VStack {
            Image(entry.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding()

            Text(entry.text)
                .padding()
            
            Spacer()
        }
        .navigationBarTitle("Entry Detail")
    }
}

