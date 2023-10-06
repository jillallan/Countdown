//
//  ViewModifiers.swift
//  Countdown
//
//  Created by Jill Allan on 06/10/2023.
//

import SwiftUI

struct GenerateDataViewModifier: ViewModifier {
    @Environment(\.modelContext) private var modelContext
    
    func body(content: Content) -> some View {
        content
            .onAppear {
                DataGeneration.generateData(modelContext: modelContext)
            }
    }
}
