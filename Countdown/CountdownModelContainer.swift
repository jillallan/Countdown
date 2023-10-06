//
//  CountdownModelContainer.swift
//  Countdown
//
//  Created by Jill Allan on 06/10/2023.
//

import SwiftData
import SwiftUI

struct CountdownModelContainer {
    let container: ModelContainer
    var dataGeneration: DataGeneration.Type = DataGeneration.self
    
    init(inMemory: Bool) {
        do {
            let configuration = ModelConfiguration(isStoredInMemoryOnly: inMemory)
            container = try ModelContainer(for: Event.self, configurations: configuration)
        } catch {
            fatalError("Unable to load model container: \(error.localizedDescription)")
        }
    }
}

extension CountdownModelContainer: ViewModifier {
    func body(content: Content) -> some View {
        content
            .generateData()
            .modelContainer(container)
    }
}
