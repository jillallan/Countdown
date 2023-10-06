//
//  EventRow.swift
//  Countdown
//
//  Created by Jill Allan on 06/10/2023.
//

import SwiftUI

struct EventRow: View {
    @Bindable var event: Event
    @State var daysLeft: Int = 0
    @State var secondsLeft: Int = 0
    
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        HStack {
            Image(systemName: "clock")
                .font(.largeTitle)
                .padding(.trailing)
      
            VStack(alignment: .leading) {
                Text(event.title)
                    .font(.headline)
                Text(event.date.formatted(date: .abbreviated, time: .omitted))
                    .font(.subheadline)
                
            }
            Spacer()
            VStack {
                Text(daysLeft, format: .number)
                    .font(.title)
                Text("days left")
                    .font(.subheadline)
            }
        }
        .padding()
        .foregroundColor(.white)
        .background(Color.indigo)
        
        .clipShape(RoundedRectangle(cornerRadius: 15.0, style: .circular))
        .onReceive(timer) { input in
            let date: Date = input
            let calendar = Calendar(identifier: .gregorian)
            daysLeft = calendar.numberOfDaysBetween(date, and: event.date)
        }
        .onAppear {
            let calendar = Calendar(identifier: .gregorian)
            daysLeft = calendar.numberOfDaysBetween(.now, and: event.date)
        }
    }
    
}

#Preview {
    ModelPreview { event in
        EventRow(event: event)
            .countdownModelContainer()
    }
}
