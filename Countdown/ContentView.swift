//
//  ContentView.swift
//  Countdown
//
//  Created by Jill Allan on 06/10/2023.
//

import SwiftData
import SwiftUI

struct ContentView: View {
    @Query(sort: [SortDescriptor(\Event.date)]) private var events: [Event]
    
    var body: some View {
        NavigationSplitView {
            List {
                ForEach(events) { event in
                    EventRow(event: event)
                }
            }
        } detail: {
            // TODO: Add detail view
        }
    }
}

#Preview {
    ContentView()
        .countdownModelContainer()
}
