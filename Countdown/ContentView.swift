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
        List {
            ForEach(events) { event in
                HStack {
                    VStack(alignment: .leading) {
                        Text(event.date.formatted(date: .abbreviated, time: .omitted))
                        Text(event.title)
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
        .countdownModelContainer()
}
