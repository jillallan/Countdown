//
//  DataGeneration.swift
//  Countdown
//
//  Created by Jill Allan on 06/10/2023.
//

import SwiftData
import SwiftUI

struct DataGeneration {
    static func generateData(modelContext: ModelContext) {
        modelContext.insert(Event.wedding)
        modelContext.insert(Event.honeymoon)
        modelContext.insert(Event.christmas)
    }
}
