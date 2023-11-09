//
//  JournalEntryView.swift
//  JournalInputChat
//
//  Created by John Vasquez on 10/29/23.
//

import SwiftUI

struct JournalEntryView: View {
    let entry: JournalEntry

    var body: some View {
        VStack {
            Image(entry.imageName)
                .resizable()
                .frame(width: 100, height: 100)
                .cornerRadius(10)

            Text(entry.text)
                .lineLimit(2)
                .padding(.top, 4)
            
            Text(entry.date, style: .date)
                .font(.caption)
                .foregroundColor(.gray)
        }
    }
}



