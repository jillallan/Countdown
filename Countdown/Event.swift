//
//  Event.swift
//  Countdown
//
//  Created by Jill Allan on 06/10/2023.
//

import SwiftData
import SwiftUI

@Model
class Event {
    var date: Date
    var title: String
    
    init(date: Date = Date.now, title: String = "") {
        self.date = date
        self.title = title
    }
}

