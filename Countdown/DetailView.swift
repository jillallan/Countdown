//
//  DetailView.swift
//  Countdown
//
//  Created by Jill Allan on 06/10/2023.
//

import SwiftUI

struct DetailView: View {
    @Environment(\.modelContext) var modelContext
    @Bindable var event: Event
    
    var body: some View {
        Form {
            Section("Event Title") {
                TextField("Title", text: $event.title)
            }
            
            Section("Event Date") {
                DatePicker("Event Date", selection: $event.date, displayedComponents: [.date])
                    .datePickerStyle(.graphical)
            }
            
        }
        .navigationTitle("Event Details")
    }
}

#Preview {
    ModelPreview { event in
        NavigationStack {
            DetailView(event: event)
        }
    }
}
