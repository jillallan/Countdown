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
    
    // https://designcode.io/swiftui-handbook-conditional-modifier
    // https://www.avanderlee.com/swiftui/conditional-view-modifier/
    
    @ViewBuilder func `if`<Content: View>(_ condition: Bool, transform: (Self) -> Content) -> some View {
         if condition {
             transform(self)
         } else {
             self
         }
     }
}
