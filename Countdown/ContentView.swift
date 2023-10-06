//
//  ContentView.swift
//  Countdown
//
//  Created by Jill Allan on 06/10/2023.
//

import SwiftData
import SwiftUI

struct ContentView: View {
    @Environment(\.modelContext) var modelContext
    @Query(sort: [SortDescriptor(\Event.date)]) private var events: [Event]
    @State var navPath = NavigationPath()
    
    var body: some View {
        NavigationStack(path: $navPath) {
            List {
                ForEach(events) { event in
                    NavigationLink(value: event) {
                        EventRow(event: event)
                    }
                }
                .onDelete(perform: deleteEvent)
            }
            .navigationTitle("Countdowns")
            .navigationDestination(for: Event.self) { event in
                DetailView(event: event)
            }
            .toolbar {
                ToolbarItem {
                    Button {
                        addEvent()
                    } label: {
                        Label("Add Event", systemImage: "plus")
                    }
                }
            }
        }
    }
    
    func addEvent() {
        let newEvent = Event()
        modelContext.insert(newEvent)
        navPath.append(newEvent)
    }
    
    func deleteEvent(_ indexSet: IndexSet) {
        for index in indexSet {
            let event = events[index]
            modelContext.delete(event)
        }
    }
}

#Preview {
    NavigationStack {
        ContentView()
            .countdownModelContainer()
    }

}
