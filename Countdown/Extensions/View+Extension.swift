//
//  View+Extension.swift
//  Countdown
//
//  Created by Jill Allan on 06/10/2023.
//

import SwiftUI

extension View {
    func countdownModelContainer(inMemory: Bool = true) -> some View {
        modifier(CountdownModelContainer(inMemory: inMemory))
    }
    
    func generateData() -> some View {
        modifier(GenerateDataViewModifier())
    }
}
