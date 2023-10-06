//
//  CountdownApp.swift
//  Countdown
//
//  Created by Jill Allan on 06/10/2023.
//

import SwiftUI

@main
struct CountdownApp: App {
    
#if DEBUG
    let inMemory: Bool = true
#else
    let inMemory: Bool = false
#endif
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .countdownModelContainer(inMemory: inMemory)
        }
    }
}
