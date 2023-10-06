//
//  Event+SampleData.swift
//  Countdown
//
//  Created by Jill Allan on 06/10/2023.
//

import Foundation
import SwiftData

extension Event {
    static var wedding = Event(
        date: DateFormatter.date(withDefaultFormat: "2023/09/02 11:30:00"),
        title: "Wedding"
    )
    
    static var honeymoon = Event(
        date: DateFormatter.date(withDefaultFormat: "2023/11/19 12:00:00"),
        title: "Honeymoon"
    )
    
    static var christmas = Event(
        date: DateFormatter.date(withDefaultFormat: "2023/12/25 00:00:00"),
        title: "Christmas"
    )
}
